resource "azurerm_resource_group" "first_resource_group" {
  name     = "remote-state"
  location = var.location
  tags     = local.commom_tags # A variavel esta apontando para o arquivo locals.tf
}

resource "azurerm_storage_account" "first_storage_account" {
  name                     = "storagekioremotestate"
  resource_group_name      = azurerm_resource_group.first_resource_group.name # O nome do grupo foi referenciado pelo "resource group" acima.
  location                 = var.location                                     # A variavel esta apontando para o arquivo variables.tf
  account_tier             = var.account_tier                                 # A variavel esta apontando para o arquivo variables.tf
  account_replication_type = var.account_replication_type                     # A variavel esta apontando para o arquivo variables.tf

  blob_properties {
    versioning_enabled = true
  }

  tags = local.commom_tags # A variavel esta apontando para o arquivo locals.tf
}

resource "azurerm_storage_container" "first_container" {
  name                 = "remote-state"
  storage_account_name = azurerm_storage_account.first_storage_account.name # O nome do storage foi referenciado pelo "storage account" acima.
}

