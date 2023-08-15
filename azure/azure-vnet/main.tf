terraform {

  required_version = ">= 1.0.0"

  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.68.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "remote"
    storage_account_name = "storagekioremotestate"
    container_name       = "remote-state"
    key                  = "azure-vet/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}