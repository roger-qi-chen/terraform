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

# locals {
#   resource_group = "my-resource-group"
#   location       = "Australia East"
# }

module "my_module" {
  # source = "git@github.com:terraform.git//azure/tf-modules/vm" # 
  source = "/Users/roger/terraform/azure/tf-modules/vm"

  # vm_name              = var.vm_name
  # vm_size              = var.vm_size
  resource_group_name  = var.resource_group_name
  location             = var.location
  virtual_network_name = var.virtual_network_name
  pri_subnet_name      = var.pri_subnet_name
  pub_subnet_name      = var.pub_subnet_name
  admin_username       = var.admin_username
  admin_password       = var.admin_password
  #   subnet_id              = var.subnet_id
  #   network_security_group = var.network_interface_ids
  # data.
}


