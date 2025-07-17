@AbapCatalog.sqlViewName: 'ZVEMP'
@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Test CDS View for Employee Data'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view ZCDS_EMPLOYEES
  as select from ztable_employees
{
  key emp_id as EMP_ID,
      name as NAME,
      department as DEPARTMENT
}
