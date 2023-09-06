terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.11.0"
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

resource "oci_identity_user" "create_user" {
  compartment_id = var.compartment_id
  name           = "caio.novelletto"
  description    = "Usuário de teste no terraform"
}

resource "oci_identity_group" "resource_group" {
  compartment_id = var.compartment_id
  name           = "devops"
  description    = "Grupo de teste"
}

resource "oci_identity_policy" "resource_policy" {
  compartment_id = var.compartment_id
  name           = "devops"
  description    = "Politica de teste"
  statements = [
    <<-EOT
    Allow group ${oci_identity_group.resource_group.name} to manage users in compartment ${oci_identity_user.create_user.compartment_id}
    EOT
  ]
}

resource "oci_identity_user_group_membership" "membro" {
  user_id  = oci_identity_user.create_user.id
  group_id = oci_identity_group.resource_group.id
}

