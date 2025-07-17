@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order with Items'
define view entity ZCDS_SALES_ORDER_MASTER as select from ztab_sales_order as SalesOrder
  association [1..1] to ztab_customer as _Customer on SalesOrder.customer_id = _Customer.customer_id
  association [1..1] to ztab_sales_org as _SalesOrg on SalesOrder.sales_org_id = _SalesOrg.sales_org_id
  composition [0..*] of ZCDS_SALES_ORDER_ITEMS as _Items
{
    key SalesOrder.sales_order_id,
    SalesOrder.customer_id,
    SalesOrder.sales_org_id,
    SalesOrder.order_date,
    SalesOrder.order_status,
    SalesOrder.total_amount,
    SalesOrder.currency_code,
    SalesOrder.created_by,
    SalesOrder.created_on,
    
    // Associations
    _Customer,
    _SalesOrg,
    
    // Composition
    _Items
}
