using {joins as my} from '../db/schema';


@path: 'join-service'
@requires: 'authenticated-user'
service externaljoin {
    entity Sells                as projection on my.Sells;
    entity WithAssociations     as projection on my.WithAssociations;
    entity ZCDS_VH_Account      as projection on my.ZCDS_VH_Account;
    entity ZCDS_VH_Company_Code as projection on my.ZCDS_VH_Company_Code;
    entity Account              as projection on my.Account;
    entity Company_Code         as projection on my.Company_Code;

    // test 1
    // entity ExplicitSells        as
    //     select
    //         Sells.User,
    //         ZCDS_VH_Company_Code.Country_Text
    //     from Sells
    //     inner join ZCDS_VH_Company_Code
    //         on Sells.Company_Code = ZCDS_VH_Company_Code.Company_Code;

    // test 2
    // entity ExplicitSells        as
    //     select from Sells
    //     inner join ZCDS_VH_Company_Code
    //         on Sells.Company_Code = ZCDS_VH_Company_Code.Company_Code
    //     inner join ZCDS_VH_Account
    //         on ZCDS_VH_Company_Code.Country = ZCDS_VH_Account.Country
    //     {
    //         Sells.User,
    //         ZCDS_VH_Company_Code.Country_Text,
    //         ZCDS_VH_Account.Account_Text
    //     };

    // test 3
    // entity ExplicitSells        as
    //     select from Sells
    //     inner join Company_Code
    //         on Sells.Company_Code = Company_Code.Company_Code
    //     {
    //         User,
    //         Company_Code.Country_Text
    //     };

    // test 4
    entity fullExternal         as
        select from ZCDS_VH_Company_Code
        inner join ZCDS_VH_Account on ZCDS_VH_Company_Code.Country = ZCDS_VH_Account.Country
        {
            ZCDS_VH_Company_Code.Company_Code,
            ZCDS_VH_Account.Account_Text,
            ZCDS_VH_Company_Code.Country
        }
}
