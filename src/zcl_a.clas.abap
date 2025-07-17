CLASS zcl_a DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.

    " Public instance attributes
    DATA:
      gv_attr_public TYPE string.

    " Public static attributes
    CLASS-DATA:
      gv_class_attr_public TYPE string.

    " Public constant
    CONSTANTS:
      gc_const_public TYPE string VALUE 'CONST_A_PUB'.

    " Public instance method
    METHODS:
      if_method_public
        IMPORTING iv_input TYPE string
        RETURNING VALUE(rv_output) TYPE string.

    " Public static method
    CLASS-METHODS:
      class_method_public
        RETURNING VALUE(rv_value) TYPE string.

  PROTECTED SECTION.

    " Protected instance attributes
    DATA:
      gv_attr_protected TYPE string.

    " Protected static attributes
    CLASS-DATA:
      gv_class_attr_protected TYPE string.

    " Protected constant
    CONSTANTS:
      gc_const_protected TYPE string VALUE 'CONST_A_PROT'.

    " Protected instance method
    METHODS:
      if_method_protected
        IMPORTING iv_input TYPE string
        RETURNING VALUE(rv_output) TYPE string.

    " Protected static method
    CLASS-METHODS:
      class_method_protected
        RETURNING VALUE(rv_value) TYPE string.

  PRIVATE SECTION.

    " Private instance attributes
    DATA:
      gv_attr_private TYPE string.

    " Private static attributes
    CLASS-DATA:
      gv_class_attr_private TYPE string.

    " Private constant
    CONSTANTS:
      gc_const_private TYPE string VALUE 'CONST_A_PRIV'.

    " Private instance method
    METHODS:
      if_method_private
        IMPORTING iv_input TYPE string
        RETURNING VALUE(rv_output) TYPE string.

    " Private static method
    CLASS-METHODS:
      class_method_private
        RETURNING VALUE(rv_value) TYPE string.

ENDCLASS.

CLASS zcl_a IMPLEMENTATION.

  METHOD if_method_public.
    rv_output = |Public A: { iv_input }|.
  ENDMETHOD.

  METHOD if_method_protected.
    rv_output = |Protected A: { iv_input }|.
  ENDMETHOD.

  METHOD if_method_private.
    rv_output = |Private A: { iv_input }|.
  ENDMETHOD.

  METHOD class_method_public.
    rv_value = 'Class Method Public A'.
  ENDMETHOD.

  METHOD class_method_protected.
    rv_value = 'Class Method Protected A'.
  ENDMETHOD.

  METHOD class_method_private.
    rv_value = 'Class Method Private A'.
  ENDMETHOD.

ENDCLASS.

