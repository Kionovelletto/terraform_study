# Bloco de configurações do terraform
terraform {
  required_version = "~> 1.0.0" # 1.0.0 até 1.0.n

  required_providers {
    aws = {
        version = "1.0"
        source = "hashicorp/aws"
    }

    azurerm = {
        version = "2.0"
        source = "hashicorp/azurerm"
    }
  }

  backend "azurerm" {

  }  
}

# Bloco para definição do provider (AWS, GCP, OCI, Azure)
provider "aws" {
  
}

# Bloco que criar os serviços/recursos no provider
# Ex abaixo, criando uma vm, com nome de vm1 na AWS.
resource "aws_instance" "vm1" {
  
}

# Bloco data serve para utilizar recursos de fora do terraform e importar ao mesmo.
# Ex abaixo, busca informações da imagem na AWS.
data "aws_ami" "image" {
   
}

# Bloco para definição da rede.
module "network" {
  
}

# Bloco utilizado para mencionar uma váriavel dentro do terraform.
variable "vm_name" {
  
}

# Bloco utilizado para expor informações.
output "vm1_ip" {
  
}

# Bloco para fixar códigos que podem ser utilizados varias vezes, assim não se repete código.
locals {
  
}