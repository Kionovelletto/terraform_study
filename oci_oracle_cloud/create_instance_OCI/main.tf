terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.18.0"
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

resource "oci_core_instance" "test_instance" {
  #Required
  availability_domain = var.instance_availability_domain
  compartment_id      = var.compartment_id
  shape               = var.instance_shape

  #Optional
  agent_config {

    # #Optional
    # are_all_plugins_disabled = var.instance_agent_config_are_all_plugins_disabled
    # is_management_disabled = var.instance_agent_config_is_management_disabled
    # is_monitoring_disabled = var.instance_agent_config_is_monitoring_disabled
    plugins_config {
      #Required
      desired_state = var.instance_agent_config_plugins_config_desired_state
      name          = var.instance_agent_config_plugins_config_name
    }
  }
  # availability_config {

  #     #Optional
  #     is_live_migration_preferred = var.instance_availability_config_is_live_migration_preferred
  #     recovery_action = var.instance_availability_config_recovery_action
  # }
  # compute_cluster_id = oci_core_compute_cluster.test_compute_cluster.id
  # create_vnic_details {

  #     #Optional
  #     assign_ipv6ip = var.instance_create_vnic_details_assign_ipv6ip
  #     assign_private_dns_record = var.instance_create_vnic_details_assign_private_dns_record
  #     assign_public_ip = var.instance_create_vnic_details_assign_public_ip
  #     defined_tags = {"Operations.CostCenter"= "42"}
  #     display_name = var.instance_create_vnic_details_display_name
  #     freeform_tags = {"Department"= "Finance"}
  #     hostname_label = var.instance_create_vnic_details_hostname_label
  #     ipv6address_ipv6subnet_cidr_pair_details = var.instance_create_vnic_details_ipv6address_ipv6subnet_cidr_pair_details
  #     nsg_ids = var.instance_create_vnic_details_nsg_ids
  #     private_ip = var.instance_create_vnic_details_private_ip
  #     skip_source_dest_check = var.instance_create_vnic_details_skip_source_dest_check
  #     subnet_id = oci_core_subnet.test_subnet.id
  #     vlan_id = oci_core_vlan.test_vlan.id
  # }
  # dedicated_vm_host_id = oci_core_dedicated_vm_host.test_dedicated_vm_host.id
  # defined_tags = {"Operations.CostCenter"= "42"}
  # display_name = var.instance_display_name
  # extended_metadata = {
  #     some_string = "stringA"
  #     nested_object = "{\"some_string\": \"stringB\", \"object\": {\"some_string\": \"stringC\"}}"
  # }
  # fault_domain = var.instance_fault_domain
  # freeform_tags = {"Department"= "Finance"}
  # hostname_label = var.instance_hostname_label
  # instance_configuration_id = oci_core_instance_configuration.test_instance_configuration.id
  # instance_options {

  #     #Optional
  #     are_legacy_imds_endpoints_disabled = var.instance_instance_options_are_legacy_imds_endpoints_disabled
  # }
  # ipxe_script = var.instance_ipxe_script
  # is_pv_encryption_in_transit_enabled = var.instance_is_pv_encryption_in_transit_enabled
  # launch_options {

  #     #Optional
  #     boot_volume_type = var.instance_launch_options_boot_volume_type
  #     firmware = var.instance_launch_options_firmware
  #     is_consistent_volume_naming_enabled = var.instance_launch_options_is_consistent_volume_naming_enabled
  #     is_pv_encryption_in_transit_enabled = var.instance_launch_options_is_pv_encryption_in_transit_enabled
  #     network_type = var.instance_launch_options_network_type
  #     remote_data_volume_type = var.instance_launch_options_remote_data_volume_type
  # }
  # metadata = var.instance_metadata
  platform_config {
    #Required
    type = var.instance_platform_config_type

    #Optional
    # are_virtual_instructions_enabled = var.instance_platform_config_are_virtual_instructions_enabled
    # config_map = var.instance_platform_config_config_map
    # is_access_control_service_enabled = var.instance_platform_config_is_access_control_service_enabled
    # is_input_output_memory_management_unit_enabled = var.instance_platform_config_is_input_output_memory_management_unit_enabled
    # is_measured_boot_enabled = var.instance_platform_config_is_measured_boot_enabled
    # is_memory_encryption_enabled = var.instance_platform_config_is_memory_encryption_enabled
    # is_secure_boot_enabled = var.instance_platform_config_is_secure_boot_enabled
    # is_symmetric_multi_threading_enabled = var.instance_platform_config_is_symmetric_multi_threading_enabled
    # is_trusted_platform_module_enabled = var.instance_platform_config_is_trusted_platform_module_enabled
    # numa_nodes_per_socket = var.instance_platform_config_numa_nodes_per_socket
    # percentage_of_cores_enabled = var.instance_platform_config_percentage_of_cores_enabled
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
  #shape = var.instance_shape
  # shape_config {

  #     #Optional
  #     baseline_ocpu_utilization = var.instance_shape_config_baseline_ocpu_utilization
  #     memory_in_gbs = var.instance_shape_config_memory_in_gbs
  #     nvmes = var.instance_shape_config_nvmes
  #     ocpus = var.instance_shape_config_ocpus
  #     vcpus = var.instance_shape_config_vcpus
  # }
  source_details {
    #Required
    source_id   = oci_core_image.test_image.id
    source_type = "image"

    # #Optional
    # boot_volume_size_in_gbs = var.instance_source_details_boot_volume_size_in_gbs
    # boot_volume_vpus_per_gb = var.instance_source_details_boot_volume_vpus_per_gb
    instance_source_image_filter_details {
      #Required
      compartment_id = var.compartment_id

      #Optional
      # defined_tags_filter = var.instance_source_details_instance_source_image_filter_details_defined_tags_filter
      # operating_system = var.instance_source_details_instance_source_image_filter_details_operating_system
      # operating_system_version = var.instance_source_details_instance_source_image_filter_details_operating_system_version
    }
    #kms_key_id = oci_kms_key.test_key.id
  }
  preserve_boot_volume = false
}