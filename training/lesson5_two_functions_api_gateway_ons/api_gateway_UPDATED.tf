module "fk_api_gateway" {
  source = "git::https://github.com/foggykitchen/terraform-oci-fk-api-gateway.git?ref=v0.2.0" # TODO: tag not yet released

  name             = "fk-fn-lesson5-api-gateway"
  compartment_ocid = var.compartment_ocid
  subnet_id        = module.fk_vcn.subnet_ids["apigw_public"]
  path_prefix      = "/v1"

  routes = [
    {
      name    = "fninitiator"
      path    = "/fninitiator"
      methods = ["POST"]
      backend = {
        type        = "ORACLE_FUNCTIONS_BACKEND"
        function_id = module.oci-fk-initiator-function.oci_app_fn.fn_ocid
      }
    }
  ]

  depends_on = [module.fk_policy_apigateway_functions]
}
