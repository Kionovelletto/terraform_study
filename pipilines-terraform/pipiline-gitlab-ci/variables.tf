variable "location" {
  description = "Variavel indicador de região onde os recursos vão ser criados"
  type        = string
  default     = "West US 2"
}

variable "aws_pub_key" {
  description = "Public key para VM na AWS"
  type = string
}

variable "azure_pub_key" {
  description = "Public key para VM na Azure"
  type = string
}