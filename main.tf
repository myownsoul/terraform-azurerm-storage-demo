resource "azurerm_resource_group" "storage" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = "${azurerm_resource_group.storage.name}"
  location                 = "${azurerm_resource_group.storage.location}"
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type

  tags = var.storage_account_tags
}