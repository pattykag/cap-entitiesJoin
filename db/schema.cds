using ZSB_I026_CONCIERGE_2 from '../srv/external/ZSB_I026_CONCIERGE_2';
using ZSB_I026_CONCIERGE_2 as cap_concierge from '../srv/external/cap-concierge';


namespace joins;

// Associations works
entity WithAssociations {
    key ID           : Integer;
        User         : String(30);
        Company_Code : Association to many ZCDS_VH_Company_Code;
        Account      : Association to many ZCDS_VH_Account;
}

@readonly
entity ZCDS_VH_Account      as projection on ZSB_I026_CONCIERGE_2.ZCDS_VH_Account {
    key Account,
        Account_Text,
        Country
};

@readonly
entity ZCDS_VH_Company_Code as projection on ZSB_I026_CONCIERGE_2.ZCDS_VH_Company_Code {
    key Company_Code,
        Country,
        Country_Text,
        Company_Name
};

@readonly
entity Account              as projection on cap_concierge.ZCDS_VH_Account {
    key Account,
        Account_Text,
        Country
};

@readonly
entity Company_Code         as projection on cap_concierge.ZCDS_VH_Company_Code {
    key Company_Code,
        Country,
        Country_Text,
        Company_Name
};

// test 1, 2 and 3
entity Sells {
    key Company_Code : String(4);
        User         : String(30);
}
