@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Items'
define view entity ZCDS_SALES_ORDER_ITEMS as select from ztab_sales_item as SalesItem
  association [1..1] to ztab_product as _Product on SalesItem.product_id = _Product.product_id
  association to parent ZCDS_SALES_ORDER_MASTER as _SalesOrder on $projection.sales_order_id = _SalesOrder.sales_order_id
{
    key SalesItem.sales_order_id,
    key SalesItem.item_number,
    SalesItem.product_id,
    SalesItem.quantity,
    SalesItem.unit_of_measure,
    SalesItem.unit_price,
    SalesItem.total_price,
    SalesItem.currency_code,
    SalesItem.item_status,
    
    // Associations
    _Product,
    _SalesOrder
}
