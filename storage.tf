resource "azurerm_storage_account" "asa_default" {
  name                     = lookup(var.storage, "asa_name")
  resource_group_name      = azurerm_resource_group.arg_default.name
  location                 = lookup(var.common, "rsg_location")
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "asc_default" {
  name                  = lookup(var.storage, "asc_name")
  resource_group_name   = azurerm_resource_group.arg_default.name
  storage_account_name  = azurerm_storage_account.asa_default.name
  container_access_type = "private"
}
