class ZCL_ABAPGIT_OAUTH2_CONFIG_EXT definition
  public
  final
  create public .

public section.

  interfaces IF_BADI_INTERFACE .
  interfaces IF_OA2C_CONFIG_EXTENSION .
protected section.
private section.
ENDCLASS.



CLASS ZCL_ABAPGIT_OAUTH2_CONFIG_EXT IMPLEMENTATION.


  method IF_OA2C_CONFIG_EXTENSION~GET_AC_AUTH_REQU_PARAMS.
  endmethod.


  method IF_OA2C_CONFIG_EXTENSION~GET_SAML20_AT_REQU_PARAMS.
  endmethod.
ENDCLASS.
