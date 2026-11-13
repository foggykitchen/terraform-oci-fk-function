terraform {
  required_version = ">= 1.11.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = ">= 2.5.0, < 3.0.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.2.0, < 4.0.0"
    }
    oci = {
      source = "oracle/oci"

      version = ">= 9.12.1, < 10.0.0"
    }
  }
}
