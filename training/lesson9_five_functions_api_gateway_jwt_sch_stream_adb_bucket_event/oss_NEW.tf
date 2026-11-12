module "fk_objectstorage" {
  source = "git::https://github.com/foggykitchen/terraform-oci-fk-objectstorage.git?ref=v0.2.0" # TODO: tag not yet released

  compartment_ocid = var.compartment_ocid
  name             = "fk-fn-lesson9-obj"

  buckets = {
    iot_data = {
      name                  = var.bucket_name
      object_events_enabled = true
      versioning            = "Disabled"
      storage_tier          = "Standard"
    }
  }
}
