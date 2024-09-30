# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "my-resource-group"
  location = "Australia East"
  tags = {
    environment = "dev"
    source      = "Terraform"
  }
}

module "test" {
  # source = "git@github.com:terraform.git//azure/tf-modules/vm" # 
  source = "/Users/roger/terraform/azure/tf-modules/vm"

  vm_name        = var.vm_name
  vm_size        = var.vm_size
  admin_username = var.admin_username
  admin_password = var.admin_password
  #   resource_group_name    = var.resource_group_name
  #   location               = var.location
  #   subnet_id              = var.subnet_id
  #   network_security_group = var.network_interface_ids
}

# # Virtual Network
# resource "azurerm_virtual_network" "vnet" {
#   name                = "example-vnet"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name
# }

# # Subnet
# resource "azurerm_subnet" "subnet" {
#   name                 = "example-subnet"
#   resource_group_name  = azurerm_resource_group.rg.name
#   virtual_network_name = azurerm_virtual_network.vnet.name
#   address_prefixes     = ["10.0.1.0/24"]
# }

# # Network Security Group
# resource "azurerm_network_security_group" "nsg" {
#   name                = "example-nsg"
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name
# }

# # Associate NSG with Subnet
# resource "azurerm_subnet_network_security_group_association" "example" {
#   subnet_id                 = azurerm_subnet.subnet.id
#   network_security_group_id = azurerm_network_security_group.nsg.id
# }
