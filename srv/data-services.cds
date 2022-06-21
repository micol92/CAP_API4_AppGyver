using { HKMC_SF01, HKMC_SF02, HKMC_SF03, HKMC_SF04, NOWTAB01} from '../db/data-model';
 
@path: 'service'
service SFService {
  entity HKMC_SF01_SVR as projection on HKMC_SF01;
  entity HKMC_SF02_SVR as projection on HKMC_SF02;
  entity HKMC_SF03_SVR as projection on HKMC_SF03;
  entity HKMC_SF04_SVR as projection on HKMC_SF04;
  entity PRSVR as projection on NOWTAB01;

  //entity BusinessPartners as projection on my.BusinessPartners; 
    entity PRSVRL as
    select  SUBSTRING(PurchaseRequisition,1,8) AS PurchaseRequisition : String(8),
            Material,
            RequestedQuantity,
            RequisitionerName,
            PurReqnReleaseStatus,
            ProcessingStatus    
    from PRSVR
    ;
}
