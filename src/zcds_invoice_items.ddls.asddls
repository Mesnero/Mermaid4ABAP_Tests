@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Invoice Items'
define view entity ZCDS_INVOICE_ITEMS as select from ztab_invoice_ite as InvoiceItem
  association [1..1] to ztab_product as _Product on InvoiceItem.product_id = _Product.product_id
  association to parent ZCDS_INVOICE_HEADER as _Invoice on $projection.invoice_id = _Invoice.invoice_id
  association [0..1] to ztab_sales_item as _SalesItem on InvoiceItem.sales_order_id = _SalesItem.sales_order_id
                                                     and InvoiceItem.sales_item_number = _SalesItem.item_number
{
    key InvoiceItem.invoice_id,
    key InvoiceItem.item_number,
    InvoiceItem.sales_order_id,
    InvoiceItem.sales_item_number,
    InvoiceItem.product_id,
    InvoiceItem.quantity,
    InvoiceItem.unit_price,
    InvoiceItem.total_amount,
    InvoiceItem.currency_code,
    
    // Associations
    _Product,
    _Invoice,
    _SalesItem
}
