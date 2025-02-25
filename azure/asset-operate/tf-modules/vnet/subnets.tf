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

# Create public IPs
# resource "azurerm_public_ip" "my_terraform_public_ip" {
#   name                = "myPublicIP"
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name
#   allocation_method   = "Dynamic"
# }

# # Create Network Security Group and rule
# resource "azurerm_network_security_group" "my_terraform_nsg" {
#   name                = "myNetworkSecurityGroup"
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name

#   security_rule {
#     name                       = "SSH"
#     priority                   = 1001
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "22"
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#   }
# }

# # Create network interface
# resource "azurerm_network_interface" "nic" {
#   name                = "myNIC"
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.pri_subnet1.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }

# # Connect the security group to the network interface
# resource "azurerm_network_interface_security_group_association" "sg_association" {
#   network_interface_id      = azurerm_network_interface.nic.id
#   network_security_group_id = azurerm_network_security_group.my_terraform_nsg.id
# }
