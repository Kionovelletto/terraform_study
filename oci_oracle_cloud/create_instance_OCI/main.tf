# Documento utilizado para criar esse arquivo de recursos
# https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_instance

terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.12.0"
    }
  }
}

resource "oci_core_instance" "kio_test_instance" {
  availability_domain = var.instance_availability_domain
  compartment_id      = var.compartment_id
  shape               = var.instance_shape
}

platform_config {
  #Required
  type = var.instance_platform_config_type
}
preemptible_instance_config {
  #Required
  preemption_action {
    #Required
    type = var.instance_preemptible_instance_config_preemption_action_type

    #Optional
    preserve_boot_volume = var.instance_preemptible_instance_config_preemption_action_preserve_boot_volume
  }
}
shape = var.instance_shape
shape_config {

  #Optional
  baseline_ocpu_utilization = var.instance_shape_config_baseline_ocpu_utilization
  memory_in_gbs             = var.instance_shape_config_memory_in_gbs
  #nvmes = var.instance_shape_config_nvmes
  ocpus = var.instance_shape_config_ocpus
}
source_details {
  #Required
  source_id   = oci_core_image.test_image.id
  source_type = "image"

  #Optional
  boot_volume_size_in_gbs = var.instance_source_details_boot_volume_size_in_gbs
  instance_source_image_filter_details {
    #Required
    compartment_id = var.compartment_id

    #Optional
    defined_tags_filter      = var.instance_source_details_instance_source_image_filter_details_defined_tags_filter
    operating_system         = var.instance_source_details_instance_source_image_filter_details_operating_system
    operating_system_version = var.instance_source_details_instance_source_image_filter_details_operating_system_version
  }
  kms_key_id = oci_kms_key.test_key.id
}
preserve_boot_volume = false
