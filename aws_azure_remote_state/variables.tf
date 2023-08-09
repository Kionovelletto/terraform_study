variable "location" {
  description = "Variavel indicador de região onde os recursos vão ser criados"
  type        = string
  default     = "West US 2"
}

variable "account_tier" {
  description = "Tier da storage  Account na Azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação de dados da storage account"
  type        = string
  default     = "LRS"
  sensitive   = true # O sensitive não mostra os dados desse bloco no plan e apply.
}