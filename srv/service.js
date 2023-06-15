const cds = require('@sap/cds');

module.exports = async (srv) => {
  // Using CDS API      
  const ZSB_I026_CONCIERGE_2 = await cds.connect.to("ZSB_I026_CONCIERGE_2");
  srv.on('READ', 'ZCDS_VH_Account', req => ZSB_I026_CONCIERGE_2.run(req.query));
  srv.on('READ', 'ZCDS_VH_Company_Code', req => ZSB_I026_CONCIERGE_2.run(req.query));
}