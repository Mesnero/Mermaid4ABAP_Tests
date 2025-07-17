@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Sales Analysis'
define view entity ZCDS_PRODUCT_SALES as select from ztab_sales_item as SalesItem
inner join ztab_sales_order as SalesOrder on SalesItem.sales_order_id = SalesOrder.sales_order_id
association [1..1] to ztab_product as _Product on SalesItem.product_id = _Product.product_id
association [1..1] to ztab_customer as _Customer on SalesOrder.customer_id = _Customer.customer_id
{
key SalesItem.product_id,
key SalesItem.sales_order_id,
key SalesItem.item_number,
SalesItem.quantity,
SalesItem.unit_price,
SalesItem.total_price,
SalesItem.currency_code,
SalesItem.item_status,

// Add fields from SalesOrder if needed
SalesOrder.customer_id,
SalesOrder.order_date,

// Associations
_Product,
_Customer
}
