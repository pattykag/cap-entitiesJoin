// Serves a Swagger UI with API definitions either created on the fly
// or loaded from file system.
//
// Needs @sap/cds-dk >= 3.3.0 installed

const { resolve } = require('path')
const { promisify } = require('util')
const readFile = promisify(require('fs').readFile)
const swaggerUi = require('swagger-ui-express')
const cds = require('@sap/cds')
const cors = require('cors')

const debug = cds.debug('openapi')
let app, docCache = {}

// Habilita o deshabilita partes de la UI
// .models = schema
// .topbar = la barra con el ícono de swagger (display: none)
let options = {
    customCss: '.swagger-ui .models { display: true } .swagger-ui .topbar { display: true }'
};

cds
    .on('bootstrap', _app => {
        app = _app
        app.use(cors()) // allow to be called from e.g. editor.swagger.io
    })
    .on('serving', service => {
        const apiPath = '/api-docs' + service.path
        console.log(`[Open API] - serving ${service.name} at ${apiPath}`)
        app.use(apiPath, async(req, _, next) => {
            req.swaggerDoc = await toOpenApiDoc(service, docCache)
            next()
        }, swaggerUi.serve, swaggerUi.setup(null, options))
        addLinkToIndexHtml(service, apiPath)
    })

async function toOpenApiDoc(service, cache) {
    if (!cache[service.name]) {
        const spec = await openApiFromFile(service)
        if (spec) { // pre-compiled spec file available?
            cache[service.name] = spec
        }
        // On-the-fly exporter available?  Needs @sap/cds-dk >= 3.3.0
        else if (cds.compile.to.openapi) {
            debug && debug('Compiling Open API spec for', service.name)
            cache[service.name] = cds.compile.to.openapi(service.model, {
                service: service.name,
                'openapi:url': service.path,
                'openapi:diagram': false
            })
        }
    }
    return cache[service.name]
}

async function openApiFromFile(service) {
    //console.log(service.name)
    //const fileName = resolve(__dirname, `../docs/${service.name}.openapi3.json`) // acá se setea la ruta del archivo moviéndonos entre sus carpetas
    // Si da error "unable to render" usar la linea 59
    const fileName = resolve(`srv/docs/${service.name}.openapi3.json`)
    const file = await readFile(fileName).catch(() => { /*no such file*/ })
    if (file) {
        debug && debug('Using Open API spec from file', fileName)
        return JSON.parse(file)
    }
}

function addLinkToIndexHtml(service, apiPath) {
    const provider = (entity) => {
            if (entity) return // avoid link on entity level, looks too messy
            return { href: apiPath, name: 'Swagger UI', title: 'Show in Swagger UI' }
        }
        // Needs @sap/cds >= 4.4.0
    service.$linkProviders ? service.$linkProviders.push(provider) : service.$linkProviders = [provider]
}

module.exports = cds.server