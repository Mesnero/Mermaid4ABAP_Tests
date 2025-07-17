@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Basic View'
define view entity ZCDS_CUSTOMER_BASIC as select from ztab_customer {
    key customer_id,
    customer_name,
    customer_type,
    country_code,
    region_code,
    created_by,
    created_on,
    last_changed_by,
    last_changed_on
}
