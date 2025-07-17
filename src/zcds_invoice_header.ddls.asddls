@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Invoice Header with Details'
define view entity ZCDS_INVOICE_HEADER as select from ztab_invoice as Invoice
  association [1..1] to ztab_customer as _Customer on Invoice.customer_id = _Customer.customer_id
  association [0..1] to ztab_sales_order as _SalesOrder on Invoice.sales_order_id = _SalesOrder.sales_order_id
  composition [0..*] of ZCDS_INVOICE_ITEMS as _InvoiceItems
{
    key Invoice.invoice_id,
    Invoice.sales_order_id,
    Invoice.customer_id,
    Invoice.invoice_date,
    Invoice.due_date,
    Invoice.invoice_amount,
    Invoice.currency_code,
    Invoice.payment_status,
    Invoice.created_by,
    
    // Associations
    _Customer,
    _SalesOrder,
    
    // Composition
    _InvoiceItems
}
