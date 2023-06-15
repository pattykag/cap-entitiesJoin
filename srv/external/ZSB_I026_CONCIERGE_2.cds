/* checksum : 994a17ba0801cc88f0505dbb66c52e5c */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZSB_I026_CONCIERGE_2 {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
@sap.label : 'DIAR Report'
entity ZSB_I026_CONCIERGE_2.ZCDS_I026_CONCIERGESet {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Close Items'
  key pi_Close_items : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Statutory View'
  key pi_Statutory : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Show Comments'
  key pi_Show_comments : Boolean not null;
  @sap.display.format : 'Date'
  @sap.label : 'Key Date'
  key pi_Key_date : Date not null;
  @sap.label : 'Company Code'
  @sap.value.list : 'standard'
  key Company_Code : String(4) not null;
  key Document_Number : String(10) not null;
  @sap.display.format : 'NonNegative'
  key Fiscal_Year : String(4) not null;
  @sap.label : 'Country'
  @sap.value.list : 'standard'
  COUNTRY : String(3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Account'
  @sap.value.list : 'standard'
  Account : String(10);
  @sap.label : 'Industry'
  @sap.value.list : 'standard'
  Industry : String(20);
  @sap.label : 'Master Client Lvl1 Number'
  @sap.value.list : 'standard'
  Master_Client_Lvl1_Number : String(30);
  Customer_Name : String(35);
  Bill_to_Party_Customer_Number : String(10);
  Bill_to_Party_Customer_Name : String(35);
  WBS_Element : String(24);
  WBS_Description : String(40);
  @sap.display.format : 'NonNegative'
  WBS_Billing_AccLeader : String(10);
  WBS_Billing_AccLeader_Name : String(40);
  Master_Client_Lvl1_Name : String(50);
  collector : String(80);
  Billing_Document : String(10);
  Reference : String(16);
  Assignment : String(18);
  @sap.display.format : 'Date'
  Billing_Date : Date;
  Document_Type : String(2);
  Client_Group_Categorization : String(40);
  @sap.semantics : 'currency-code'
  Document_Currency : String(5);
  @sap.semantics : 'currency-code'
  Local_Currency : String(5);
  @sap.display.format : 'Date'
  Net_Due_Date : Date;
  @sap.display.format : 'Date'
  Clearing_Date : Date;
  @sap.display.format : 'Date'
  Last_Contact_Date : Date;
  Arrears_after_net_due_date : Integer;
  Location : String(60);
  TDNAME : String(70);
  TDID : String(4);
  TDSPRAS : String(2);
  TDOBJECT : String(10);
  Actions_in_Last_month : String(10);
  Actions_in_Last_3_months : String(10);
  TDNAME_1 : String(70);
  TDSPRAS_1 : String(2);
  @sap.label : 'Invoice Status'
  @sap.value.list : 'standard'
  Invoice_Status : String(50);
  ZZOUTOFSCOPE : String(3);
  Business_Unit : String(24);
  Credit_Terms : String(8);
  @sap.label : 'Market'
  @sap.value.list : 'standard'
  market : String(80);
  @sap.label : 'Market Unit'
  @sap.value.list : 'standard'
  market_unit : String(80);
  bstkd_e : String(35);
  vbtyp : String(1);
  disp_category : String(60);
  disp_reason : String(60);
  abgsl : String(6);
  zzauwbs : String(1);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  Total_Balance_USD : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  Amount_in_Doc_Curr : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  Total_Balance_LCurr : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  current_balance_lcurr : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  total_overdue_lcurr : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  a1_15_days_lcurr : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  a16_30_days_lcurr : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  a31_45_days_lcurr : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  a46_60_days_lcurr : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  a61_90_days_lcurr : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  a91_120_days_lcurr : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  a121_180_days_lcurr : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  plus_180_days_lcurr : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  current_balance_usd : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  total_overdue_usd : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  a1_15_days_usd : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  a16_30_days_usd : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  a31_45_days_usd : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  a46_60_days_usd : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  a61_90_days_usd : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  a91_120_days_usd : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  a121_180_days_usd : Decimal(23, 3);
  @sap.unit : 'Document_Currency'
  @sap.variable.scale : 'true'
  plus_180_days_usd : Decimal(23, 3);
  Show_comments : String(1);
  Created_by : String(80);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  HeaderText : String(1024);
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Comments : String(1024);
  @sap.filterable : 'false'
  @cds.ambiguous : 'missing on condition?'
  Parameters : Association to ZSB_I026_CONCIERGE_2.ZCDS_I026_CONCIERGE {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.content.version : '1'
@sap.semantics : 'parameters'
entity ZSB_I026_CONCIERGE_2.ZCDS_I026_CONCIERGE {
  @sap.display.format : 'UpperCase'
  @sap.parameter : 'mandatory'
  @sap.label : 'Close Items'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key pi_Close_items : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.parameter : 'mandatory'
  @sap.label : 'Statutory View'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key pi_Statutory : Boolean not null;
  @sap.display.format : 'UpperCase'
  @sap.parameter : 'mandatory'
  @sap.label : 'Show Comments'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key pi_Show_comments : Boolean not null;
  @sap.display.format : 'Date'
  @sap.parameter : 'mandatory'
  @sap.label : 'Key Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key pi_Key_date : Date not null;
  @cds.ambiguous : 'missing on condition?'
  Set : Association to many ZSB_I026_CONCIERGE_2.ZCDS_I026_CONCIERGESet {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Value Help for Account- CIO DIAR I026 Concierge'
@sap.value.list : 'true'
entity ZSB_I026_CONCIERGE_2.ZCDS_VH_Account {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  key Account : String(10) not null;
  @sap.label : 'Industry Code Description'
  @sap.quickinfo : 'Name of Customer'
  Account_Text : String(80);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  Country : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Value Help for Company Code - CIO DIAR I026 Concierge'
@sap.value.list : 'true'
entity ZSB_I026_CONCIERGE_2.ZCDS_VH_Company_Code {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Company Code'
  key Company_Code : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'Country_Text'
  @sap.label : 'Country/Region Key'
  Country : String(3);
  @sap.label : 'Company Name'
  @sap.quickinfo : 'Name of Company Code or Company'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  Country_Text : String(25);
  @sap.label : 'Industry Code Description'
  @sap.quickinfo : 'Name of Company Code or Company'
  Company_Name : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Value Help for Country - CIO DIAR I026 Concierge'
@sap.value.list : 'true'
entity ZSB_I026_CONCIERGE_2.ZCDS_VH_Country {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region Key'
  key Country : String(3) not null;
  @sap.label : 'Industry Code Description'
  @sap.quickinfo : 'Name of Country/Region (Short)'
  Country_Text : String(15);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Value Help for Industry - CIO DIAR I026 Concierge'
@sap.value.list : 'true'
entity ZSB_I026_CONCIERGE_2.ZCDS_VH_Industry {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry code'
  key Industry : String(10) not null;
  @sap.label : 'Industry Code Description'
  @sap.quickinfo : 'Description'
  CustomerIndustryCodeText : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Value Help for Invoice Status - CIO DIAR I026 Concierge'
@sap.value.list : 'true'
entity ZSB_I026_CONCIERGE_2.ZCDS_VH_Invoice_Status {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resubmission Reason'
  @sap.quickinfo : 'Reason for Resubmission'
  key Invoice_Status : String(4) not null;
  @sap.label : 'Industry Code Description'
  @sap.quickinfo : 'Name of Resubmission Reason'
  Invoice_Status_Text : String(50);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Value Help for Market - CIO DIAR I026 Concierge'
@sap.value.list : 'true'
entity ZSB_I026_CONCIERGE_2.ZCDS_VH_Market {
  @sap.label : 'Market ID'
  key Market : String(5) not null;
  @sap.label : 'Industry Code Description'
  @sap.quickinfo : 'Market Name'
  Market_Text : String(150);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Value Help for Market Unit - CIO DIAR I026 Concierge'
@sap.value.list : 'true'
entity ZSB_I026_CONCIERGE_2.ZCDS_VH_Market_Unit {
  @sap.label : 'Market Unit ID'
  key Market_Unit : String(5) not null;
  @sap.label : 'Industry Code Description'
  @sap.quickinfo : 'Market Unit Name'
  Market_Text : String(150);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Value Help for Master_Client - CIO DIAR I026'
@sap.value.list : 'true'
entity ZSB_I026_CONCIERGE_2.ZCDS_VH_Master_Client {
  key Language : String(2) not null;
  key Master_Client_Lvl1_Number : String(10) not null;
  @sap.label : 'Industry Code Description'
  @sap.quickinfo : 'Name of Customer'
  Master_Client_Text : String(80);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity ZSB_I026_CONCIERGE_2.SAP__Currencies {
  @sap.label : 'Currency'
  @sap.semantics : 'currency-code'
  key CurrencyCode : String(5) not null;
  @sap.label : 'ISO code'
  ISOCode : String(3) not null;
  @sap.label : 'Short text'
  Text : String(15) not null;
  @odata.Type : 'Edm.Byte'
  @sap.label : 'Decimals'
  DecimalPlaces : Integer not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
entity ZSB_I026_CONCIERGE_2.SAP__UnitsOfMeasure {
  @sap.label : 'Internal UoM'
  @sap.semantics : 'unit-of-measure'
  key UnitCode : String(3) not null;
  @sap.label : 'ISO code'
  ISOCode : String(3) not null;
  @sap.label : 'Commercial'
  ExternalCode : String(3) not null;
  @sap.label : 'Measurement Unit Txt'
  Text : String(30) not null;
  @sap.label : 'Decimal Places'
  DecimalPlaces : Integer;
};

