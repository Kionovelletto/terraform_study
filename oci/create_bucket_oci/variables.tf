variable "tenancy_ocid" {
  description = "Variavel indicando em qual Tenancy será criado o recurso"
  type        = string
  default     = "-------"
}

variable "user_ocid" {
  description = "Variavel que informa o id do usuário OCI"
  type        = string
  default     = "-------"
}

variable "fingerprint" {
  description = "Print digital da chave recem criada OCI"
  type        = string
  default     = "-------"
}

variable "private_key_file" {
  description = "Chave privada criada para o usuario acima na   OCI"
  type        = string
  default     = "-------"
}

variable "compartment_id" {
  description = "Indicador de qual compartimento esta sendo utilizado"
  type        = string
  default     = "-------"
}

variable "region" {
  description = "Indicador de qual regiao sera utilizada"
  type        = string
  default     = "-------"
}

variable "object_storage_policy_id" {
  description = "Politica de seguranca para o storage em questao"
  type        = string
  default     = "-------"
}