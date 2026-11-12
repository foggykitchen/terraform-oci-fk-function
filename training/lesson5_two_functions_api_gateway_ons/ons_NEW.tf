module "fk_ons" {
  source = "git::https://github.com/foggykitchen/terraform-oci-fk-ons.git?ref=v0.2.0" # TODO: tag not yet released

  compartment_ocid  = var.compartment_ocid
  name              = "fk-fn-lesson5-topic"
  topic_name        = "fk-fn-lesson5-topic"
  topic_description = "This topic triggers the fncollector function"

  subscriptions = {
    fncollector = {
      protocol = "ORACLE_FUNCTIONS"
      endpoint = module.oci-fk-collector-function.oci_app_fn.fn_ocid
    }
  }
}
