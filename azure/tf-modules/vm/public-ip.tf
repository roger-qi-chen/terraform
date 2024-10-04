resource "azurerm_public_ip" "pip" {
  name                = "my-public-ip"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"

  tags = {
    environment = "dev"
  }
}
