@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Summary by Customer'
define view entity ZCDS_SALES_SUMMARY as select from ztab_sales_order as SalesOrder
  association [1..1] to ztab_customer as _Customer on SalesOrder.customer_id = _Customer.customer_id
{
    key SalesOrder.customer_id,
    SalesOrder.currency_code,
    
    @Aggregation.default: #SUM
    SalesOrder.total_amount,
    
    @Aggregation.default: #COUNT_DISTINCT
    cast(1 as abap.int4) as order_count,
    
    // Association
    _Customer
}
