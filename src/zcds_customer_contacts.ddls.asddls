@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Contact Points'
define view entity ZCDS_CUSTOMER_CONTACTS as select from ztab_customer as Customer
  association [0..*] to ztab_sales_order as _Orders on Customer.customer_id = _Orders.customer_id
  association [0..*] to ztab_invoice as _Invoices on Customer.customer_id = _Invoices.customer_id
{
    key Customer.customer_id,
    Customer.customer_name,
    Customer.customer_type,
    Customer.country_code,
    Customer.region_code,
    
    // Associations
    _Orders,
    _Invoices
}
