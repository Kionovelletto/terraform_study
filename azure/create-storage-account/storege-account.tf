resource "azurerm_resource_group" "first_resource_group" {
  name     = "storage_account_resource_group"
  location = var.location
  tags = ""
}

resource "azurerm_storage_account" "first_storage_account" {
  name                     = "storagekio"
  resource_group_name      = azurerm_resource_group.first_resource_group.name  # O nome do grupo foi referenciado pelo "resource group" acima.
  location                 = var.location       # A variavel esta apontando para o arquivo variables.tf
  account_tier             = var.account_tier       # A variavel esta apontando para o arquivo variables.tf
  account_replication_type = var.account_replication_type   # A variavel esta apontando para o arquivo variables.tf
  tags = ""
}

resource "azurerm_storage_container" "first_container" {
  name                  = ""
  storage_account_name  = ""
  container_access_type = azurerm_storage_account.first_storage_account.name   # O nome do storage foi referenciado pelo "storage account" acima.
}