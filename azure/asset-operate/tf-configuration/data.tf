data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

data "azurerm_storage_account" "sa" {
  name                = var.storage_account_name
  resource_group_name = data.azurerm_resource_group.rg.name
}
