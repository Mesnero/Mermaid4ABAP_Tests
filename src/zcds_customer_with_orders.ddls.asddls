@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer with Orders'
define view entity ZCDS_CUSTOMER_WITH_ORDERS as select from ztab_customer as Customer
  association [0..*] to ztab_sales_order as _SalesOrders on Customer.customer_id = _SalesOrders.customer_id
  association [0..*] to ztab_invoice as _Invoices on Customer.customer_id = _Invoices.customer_id
{
    key Customer.customer_id,
    Customer.customer_name,
    Customer.customer_type,
    Customer.country_code,
    Customer.region_code,
    Customer.created_by,
    Customer.created_on,
    
    // Associations
    _SalesOrders,
    _Invoices
}
