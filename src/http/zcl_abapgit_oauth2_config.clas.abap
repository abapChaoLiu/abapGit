class ZCL_ABAPGIT_OAUTH2_CONFIG definition
  public
  final
  create public .

public section.

  methods CONSTRUCTOR .
  methods IS_OAUTH2_ENABLED
    returning
      value(RV_IS_OAUTH2_ENABLED) type ABAP_BOOL .
protected section.
private section.

  data MO_SETTINGS type ref to ZCL_ABAPGIT_SETTINGS .
  data MI_EXIT type ref to ZIF_ABAPGIT_EXIT .
ENDCLASS.



CLASS ZCL_ABAPGIT_OAUTH2_CONFIG IMPLEMENTATION.


  METHOD CONSTRUCTOR.

    mo_settings = zcl_abapgit_persist_settings=>get_instance( )->read( ).

    mi_exit = zcl_abapgit_exit=>get_instance( ).

  ENDMETHOD.


  METHOD IS_OAUTH2_ENABLED.

"rv_is_oauth2_enabled = mo_settings->get_oauth2_status( ).

rv_is_oauth2_enabled = abap_true.

  ENDMETHOD.
ENDCLASS.
