# Create a virtual network within the resource group
resource "azurerm_virtual_network" "zvn" {
  name                = "my-virtual-network"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]
}
