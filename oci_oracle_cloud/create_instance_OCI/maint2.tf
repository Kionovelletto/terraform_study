terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.13.0"
    }
  }
}

provider "oci" {
  tenancy_ocid     = var.OCI_CLI_TENANCY
  user_ocid        = var.OCI_CLI_USER
  fingerprint      = var.OCI_CLI_FINGERPRINT
  private_key_path = var.OCI_CLI_KEY_FILE
  region           = var.OCI_CLI_REGION
}

resource "oci_core_instance" "minhavm" {
  compartment_id      = var.compartment_id
  display_name        = "vm"
  shape               = var.instance_shape
  availability_domain = var.instance_availability_domain

  source_details {
    source_id   = var.test_image
    source_type = "image"
  }

  create_vnic_details {
    subnet_id = var.instance_platform_config_type
  }
}
