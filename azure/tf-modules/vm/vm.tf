

# # Public IP
# resource "azurerm_public_ip" "public_ip" {
#   name                = "${var.vm_name}-public-ip"
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   allocation_method   = "Dynamic"
# }

# # Network Interface
# resource "azurerm_network_interface" "nic" {
#   name                = "${var.vm_name}-nic"
#   location            = var.location
#   resource_group_name = var.resource_group_name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = var.subnet_id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.public_ip.id
#   }
# }

# # Virtual Machine
# resource "azurerm_linux_virtual_machine" "vm" {
#   name                = var.vm_name
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   size                = var.vm_size
#   admin_username      = var.admin_username
#   admin_password      = var.admin_password

#   network_interface_ids = [
#     azurerm_network_interface.nic.id,
#   ]

#   os_disk {
#     caching              = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }

#   source_image_reference {
#     publisher = "Canonical"
#     offer     = "UbuntuServer"
#     sku       = "18.04-LTS"
#     version   = "latest"
#   }

#   computer_name  = var.vm_name
#   admin_password = var.admin_password

#   disable_password_authentication = false
# }

# # Output the public IP
# output "public_ip" {
#   description = "Public IP address of the VM"
#   value       = azurerm_public_ip.public_ip.ip_address
# }
