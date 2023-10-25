# Documento utilizado para criar esse arquivo de recursos
# https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_instance

variable "user_name" {
  description = "Indicação do nome do usuário"
  type        = string
  default     = "caio.novelletto"
}

variable "user_description" {
  description = "Descrição do do usuário"
  type        = string
  default     = "Usuário para teste no terraform"
}

variable "user_email" {
  description = "e-mail do novo usuário"
  type        = string
  default     = "kionovelletto@outlook.com"
}

variable "OCI_CLI_TENANCY" {
  description = "Variavel indicando em qual Tenancy será criado o recurso"
  type        = string
  default     = "ocid1.tenancy.oc1..aaaaaaaap6voj7wqlnulhvpwyoj3ant7gskl4w7hzoc3qlelxhzkstiqrugq"
}

variable "OCI_CLI_USER" {
  description = "Variavel que informa o id do usuário OCI"
  type        = string
  default     = "ocid1.user.oc1..aaaaaaaaldakitjqqy5vth4fbktk4s3hwg7ph7ux276umx6guv5qoglrpvbq"
}

variable "OCI_CLI_FINGERPRINT" {
  description = "Print digital da chave recem criada OCI"
  type        = string
  default     = "95:f8:7c:a3:4f:09:a7:0a:7a:5c:d1:06:1e:98:f5:08"
}

variable "OCI_CLI_KEY_FILE" {
  description = "Chave privada criada para o usuario acima na   OCI"
  type        = string
  default     = "/home/kio/.oci/kionovelletto.pem"
}

variable "compartment_id" {
  description = "Indicador de qual compartimento esta sendo utilizado"
  type        = string
  default     = "ocid1.compartment.oc1..aaaaaaaaemgvll35cl4hll5exzjo2milw2lllk22xer66ndhcltrauanifqa"
}

variable "OCI_CLI_REGION" {
  description = "Indicador de qual regiao sera utilizada"
  type        = string
  default     = "sa-saopaulo-1"
}

variable "OCI_CLI_CONFIG_FILE" {
  description = "Politica de seguranca para o storage em questao"
  type        = string
  default     = "/home/kio/.oci/config"
}
variable "instance_availability_domain" {
  description = "Variavel indicando em qual dominio de falha o recurso vai ser criado"
  type        = string
  default     = "ocid1.domain.oc1..aaaaaaaakg3tlsrvd7qhoznu34wtowoq3z3zk4u3565hlxqaxrjjtazl3znq"
}

variable "instance_shape" {
  description = "Variavel indicando qual shape vai ser utilizado"
  type        = string
  default     = "VM.Standard.E2.1.Micro"
}

variable "instance_agent_config_plugins_config_desired_state" {
  description = "Se algum plugin deve ser habilitato ou não"
  type        = bool
  default     = false
}

variable "instance_agent_config_plugins_config_name" {
  description = "Nome do plugin associado a instancia"
  type        = bool
  default     = false
}

variable "instance_platform_config_type" {
  description = "Tipo de plataforma utilizada(Supported types=[INTEL_VM, AMD_MILAN_BM, AMD_ROME_BM, AMD_ROME_BM_GPU, INTEL_ICELAKE_BM, INTEL_SKYLAKE_BM])"
  type        = string
  default     = "AMD_MILAN_BM"
}

variable "instance_preemptible_instance_config_preemption_action_type" {
  description = "Ação quando a instancia for terminada (Allowed values for this property are: “TERMINATE”, ‘UNKNOWN_ENUM_VALUE’. Any unrecognized values returned by a service will be mapped to ‘UNKNOWN_ENUM_VALUE’)"
  type        = string
  default     = "TERMINATE"
}

variable "instance_preemptible_instance_config_preemption_action_preserve_boot_volume" {
  description = "preservar o bootvolume ao terminar a instancia"
  type        = bool
  default     = false
}

# variable "test_image" {
#   description = "ID da imagem (https://docs.oracle.com/en-us/iaas/images/image/2ccff166-0f1f-4a11-9ea6-67395a2d184e/)"
#   type        = string
#   default     = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaaqd3z3wr3xy2usvhx6a64vxxy3z7yagc2s44satcro2x7tm4ckcaq"
# }

variable "oci_core_image" {
  description = "OCI Core Image Configuration"
  type = object({
    id = string
    # Outros campos necessários
  })
  default = {
    id = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaaqd3z3wr3xy2usvhx6a64vxxy3z7yagc2s44satcro2x7tm4ckcaq"
  }
}
