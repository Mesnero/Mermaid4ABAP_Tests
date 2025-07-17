CLASS zcl_d DEFINITION
  PUBLIC
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_b.

  PUBLIC SECTION.

    INTERFACES zif_c.

    METHODS:
      d_public_method
        IMPORTING iv_input TYPE string
        RETURNING VALUE(rv_output) TYPE string.

  PROTECTED SECTION.

    METHODS:
      d_protected_method
        IMPORTING iv_input TYPE string
        RETURNING VALUE(rv_output) TYPE string.

  PRIVATE SECTION.

    METHODS:
      d_private_method
        IMPORTING iv_input TYPE string
        RETURNING VALUE(rv_output) TYPE string.

ENDCLASS.

CLASS zcl_d IMPLEMENTATION.

  METHOD zif_c~if_method_public.
    rv_output = |Interface Public Method in D: { iv_input }|.
  ENDMETHOD.

  METHOD zif_c~class_method_public.
    rv_value = 'Interface Class Method Public in D'.
  ENDMETHOD.

  METHOD d_public_method.
    rv_output = |Public Method D: { iv_input }|.
  ENDMETHOD.

  METHOD d_protected_method.
    rv_output = |Protected Method D: { iv_input }|.
  ENDMETHOD.

  METHOD d_private_method.
    rv_output = |Private Method D: { iv_input }|.
  ENDMETHOD.

ENDCLASS.

