CLASS zcl_b DEFINITION
  PUBLIC
  CREATE PUBLIC
  INHERITING FROM zcl_a.

  PUBLIC SECTION.

    METHODS:
      b_public_method
        IMPORTING iv_input TYPE string
        RETURNING VALUE(rv_output) TYPE string.

  PROTECTED SECTION.

    METHODS:
      b_protected_method
        IMPORTING iv_input TYPE string
        RETURNING VALUE(rv_output) TYPE string.

  PRIVATE SECTION.

    METHODS:
      b_private_method
        IMPORTING iv_input TYPE string
        RETURNING VALUE(rv_output) TYPE string.

ENDCLASS.

CLASS zcl_b IMPLEMENTATION.

  METHOD b_public_method.
    rv_output = |Public Method B: { iv_input }|.
  ENDMETHOD.

  METHOD b_protected_method.
    rv_output = |Protected Method B: { iv_input }|.
  ENDMETHOD.

  METHOD b_private_method.
    rv_output = |Private Method B: { iv_input }|.
  ENDMETHOD.

ENDCLASS.

