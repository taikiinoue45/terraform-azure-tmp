resource "azurerm_resource_group" "somic" {
  name     = lookup(var.common, "rsg_name")
  location = lookup(var.common, "rsg_location")
}
