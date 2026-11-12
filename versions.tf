terraform {
  required_version = ">= 1.11.0"

  required_providers {
    local = {
      source = "hashicorp/local"
    }
    null = {
      source = "hashicorp/null"
    }
    oci = {
      source = "oracle/oci"

      version = ">= 9.12.1, < 10.0.0"
    }
  }
}
