variable "cidr_vpc" {
  description = "Cird block para vpc"
  type        = string
}

variable "cidr_subnet" {
  description = "Cidr block para subnet"
  type        = string
}

variable "enviroment" {
  description = "Ambiente onde o recurso vai ser utilizado"
  type        = string
}