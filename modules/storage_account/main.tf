resource "azurerm_storage_account" "sa" {
  name                     = var.saname
  resource_group_name      = var.Rgname
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}