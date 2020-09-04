class ZCL_ABAPGIT_OAUTH2_SPEC_EXT definition
  public
  inheriting from CL_OA2C_SPECIFICS_ABSTRACT
  final
  create public .

public section.

  methods IF_OA2C_SPECIFICS~GET_CONFIG_EXTENSION
    redefinition .
  methods IF_OA2C_SPECIFICS~GET_ENDPOINT_SETTINGS
    redefinition .
  methods IF_OA2C_SPECIFICS~GET_SUPPORTED_CLIENT_AUTH
    redefinition .
  methods IF_OA2C_SPECIFICS~GET_SUPPORTED_GRANT_TYPES
    redefinition .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ABAPGIT_OAUTH2_SPEC_EXT IMPLEMENTATION.


  METHOD IF_OA2C_SPECIFICS~GET_CONFIG_EXTENSION.
    r_config_extension = 'ZGITHUB_PROFILE'.
  ENDMETHOD.


  METHOD IF_OA2C_SPECIFICS~GET_ENDPOINT_SETTINGS.
    e_changeable = abap_true.

    e_token_endpoint_path = 'github.com/login/oauth/access_token'.
    e_authorization_endpoint_path = 'github.com/login/oauth/authorize'.
    e_revocation_endpoint_path = 'github.com/login/oauth/revoke'.
  ENDMETHOD.


  METHOD IF_OA2C_SPECIFICS~GET_SUPPORTED_CLIENT_AUTH.
    e_basic_authentication = abap_false.
    e_form_fields          = abap_true.
  ENDMETHOD.


  METHOD IF_OA2C_SPECIFICS~GET_SUPPORTED_GRANT_TYPES.
    e_authorization_code = abap_true.
    e_saml20_assertion   = abap_false.
    e_refresh            = abap_true.
    e_revocation         = abap_true.
  ENDMETHOD.
ENDCLASS.
