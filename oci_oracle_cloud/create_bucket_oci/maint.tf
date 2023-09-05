terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.7.0"
    }
  }
}

resource "oci_objectstorage_bucket" "kio-novelletto-bucket" {
  compartment_id        = var.compartment_id
  name                  = "kionovelletto-bkt"
  access_type           = "NoPublicAccess"
  namespace             = "grxppmvrp9cy"
  versioning            = var.versioning
  object_events_enabled = var.object_events_enabled
  #defined_tags          = var.defined_tags
  freeform_tags         = { "Department" = "DevOps" }
}

output "bucket_id" {
  value = oci_objectstorage_bucket.kio-novelletto-bucket.id
}