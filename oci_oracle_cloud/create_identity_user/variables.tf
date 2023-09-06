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

#variable "defined_tags" {
#  description = "Tags definidas para o recurso"
#  type        = map(string)
#  default     = {
#    name = "CreatedOn",
#    age  = "teste-kio"
#  }
#}
