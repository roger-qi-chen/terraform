# Create subnets
resource "azurerm_subnet" "private_link_subnet" {
  name                 = var.private_link_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.private_link_address_prefixes
}

resource "azurerm_subnet" "delegated_subnet" {
  name                 = var.delegated_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.delegated_subnet_address_prefixes
}

output "private_link_subnet_id" {
  value = azurerm_subnet.private_link_subnet.id
}

output "delegated_subnet_id" {
  value = azurerm_subnet.delegated_subnet.id
}
