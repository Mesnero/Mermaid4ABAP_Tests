INTERFACE zif_c PUBLIC.

  " Instance attributes
  DATA:
    gv_attr_public TYPE string.

  " Static attributes
  CLASS-DATA:
    gv_class_attr_public TYPE string.

  " Constant
  CONSTANTS:
    gc_const_public TYPE string VALUE 'CONST_IFACE'.

  " Instance method
  METHODS:
    if_method_public
      IMPORTING iv_input TYPE string
      RETURNING VALUE(rv_output) TYPE string.

  " Static method
  CLASS-METHODS:
    class_method_public
      RETURNING VALUE(rv_value) TYPE string.

ENDINTERFACE.
