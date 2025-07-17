@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Master View'
define view entity ZCDS_PRODUCT_MASTER as select from ztab_product {
    key product_id,
    product_name,
    product_group,
    base_unit,
    product_type,
    created_by,
    created_on
}
