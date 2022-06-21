using { cuid, managed } from '@sap/cds/common';
 
  entity HKMC_SF01 : managed {
    key sfid01      : UUID  @(Core.Computed : true);
    ordnum      : String(30);
    custname    : String(20);
    prodname    : String(50);
    prcseq      : Integer;
    prcname     : String(50);
    prdqueqty   : Integer;
    deldate     : Date;
    prcstatus   : String(15);

    sf02        : Association to many HKMC_SF02
                    on sf02.sfid01 = sfid01;
 
  }
 
  entity HKMC_SF02 : managed {
    key sfid02   : UUID  @(Core.Computed : true);
    sfid01       : UUID;
    sf01 : Association to one HKMC_SF01  on sf01.sfid01 = sfid01;    
    ordnum      : String(30);
    custname    : String(20);
    prodname    : String(50);
    prcname     : String(50);
    prdqty      : Integer;
    fltyqty     : Integer;
    worker      : String(50);
    facltyname  : String(50);
    note        : String(100);    
  }

  entity HKMC_SF03 : managed {
    key sfid03   : UUID  @(Core.Computed : true);
    ordnum      : String(30);
    custname    : String(20);
    prodname    : String(50);
    prcname     : String(50);
    worker      : String(50);
    workerid    : String(30);
    prdqty      : Integer;
    fltyqty     : Integer;
    fltytype    : String(50);
    status      : String(50);
    testyn      : String(30);
  }


  entity HKMC_SF04 : managed {
    key ordno   : Integer;
    ordname     : String(30);
  }


  entity NOWTAB01 : managed {
    key PurchaseRequisition      : UUID  @(Core.Computed : true);
    Material      : String(30);
    RequestedQuantity    : String(5);
    RequisitionerName    : String(50);
    PurReqnReleaseStatus : String(2) default 'N';
    ProcessingStatus     : String(2) default '02'; 
  }
 