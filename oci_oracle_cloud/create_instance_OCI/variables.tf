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

variable "instance_create_vnic_details_assign_private_dns_record" {
  description = "Variavel indicando o detalhe da vnic"
  type        = string
  default     = "minha_VNIC"
}

variable "instance_create_vnic_details_display_name" {
  description = "Variavel indicando o nome da vnic"
  type        = string
  default     = "minha_VNIC"
}

variable "instance_create_vnic_details_hostname_label" {
  description = "Variavel indicando o label da vnic"
  type        = string
  default     = "minha_primeira_VNIC"
}

variable "instance_platform_config_type" {
  description = "Variavel indicando a subnet"
  type        = string
  default     = "GENERIC_BM"
}

variable "instance_preemptible_instance_config_preemption_action_preserve_boot_volume" {
  description = "Variavel indicando se deseja preservar o boot volume quando a instancia for deletada"
  type        = bool
  default     = false
}

variable "instance_shape_config_baseline_ocpu_utilization" {
  description = "Variavel indicando a subnet"
  type        = string
  default     = "BASELINE_1_2"
}

variable "instance_shape_config_memory_in_gbs" {
  description = "Variavel indicando a quantidade de memória alocada para instancia em GB"
  type        = number
  default     = 4
}

variable "instance_shape_config_ocpus" {
  description = "Variavel indicando a quantidade de OCPUs alocada para instancia"
  type        = number
  default     = 1
}

variable "test_image" {
  description = "Variavel indicando o ID da imagem a ser utilizada na VM"
  type        = string
  default     = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaa2wtri6cj5tmag2vmf2as67gyrkxfsyjs4fcssprimaxrohtf6ybq"
}
variable "image" {
  description = "Variavel indicando a imagem a ser utilizada na VM"
  type        = string
  default     = "Oracle Linux 9"
}

variable "instance_source_details_boot_volume_size_in_gbs" {
  description = "Variavel indicando o tamanho do boot volume em GB"
  type        = number
  default     = 50
}

variable "instance_source_details_instance_source_image_filter_details_defined_tags_filter" {
  description = "Variavel indicando o tamanho do boot volume em GB"
  type        = string
  default     = "teste_tag_source_image"
}

variable "instance_source_details_instance_source_image_filter_details_operating_system" {
  description = "Variavel indicando o sistema operacional da imagem"
  type        = string
  default     = "Oracle Linux"
}

variable "instance_source_details_instance_source_image_filter_details_operating_system_version" {
  description = "Variavel indicando a versão do sistema operacional da imagem"
  type        = number
  default     = 9
}

variable "instance_preemptible_instance_config_preemption_action_type" {
  description = "Tipo de ação de preempção para instâncias preemptíveis"
  type        = string
  default     = "terminate"
}

