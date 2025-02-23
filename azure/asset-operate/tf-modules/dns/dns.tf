resource "azurerm_private_dns_zone" "dns_zone" {
  name                = var.domain
  resource_group_name = var.resource_group_name
}

resource "azurerm_private_dns_zone_virtual_network_link" "link" {
  name                  = var.dns_zone_vnet_link_name
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.dns_zone.name
  virtual_network_id    = module.vnet.virtual_network_id

  depends_on = [
    azurerm_virtual_network.vnet
  ]
}
