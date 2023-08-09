terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.7.0"
    }
  }
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_file = var.private_key_file
}

resource "oci_object_storage_bucket" "my_bucket" {
  name                     = "my-bucket"
  compartment_id           = var.compartment_id
  region                   = var.region
  object_storage_policy_id = var.object_storage_policy_id
}

output "bucket_name" {
  value = oci_object_storage_bucket.my_bucket.name
}

output "bucket_region" {
  value = oci_object_storage_bucket.my_bucket.region
}

output "bucket_policy_id" {
  value = oci_object_storage_bucket.my_bucket.object_storage_policy_id
}