# Configure the Azure provider
terraform {
  backend "azurerm" {
    resource_group_name   = "asset-operate"
    storage_account_name  = "assetc4e285"
    container_name        = "asset-operate-terraform-state-file"
    key                   = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.20.0"
    }
  }

  required_version = "~> 1.10.5"
}

provider "azurerm" {
  features {}
}

module "vnet" {
  source = "../tf-modules/vnet" # source = "git@github.com:terraform.git/AssetOperate-IaaC/azure/tf-modules/vnet"
  
  resource_group_name     = data.azurerm_resource_group.rg.name
  resource_group_location = data.azurerm_resource_group.rg.location

  env                               = var.env
  virtual_network_name              = var.virtual_network_name
  address_space                     = var.address_space
  private_link_subnet_name          = var.private_link_subnet_name
  delegated_subnet_name             = var.delegated_subnet_name
  private_link_address_prefixes     = var.private_link_address_prefixes
  delegated_subnet_address_prefixes = var.delegated_subnet_address_prefixes

}

# module "app-service" {
#   # source = "git@github.com:terraform.git//azure/tf-modules/vnet" # 
#   source = "/Users/roger/terraform/azure/tf-modules/vnet"
#   env                        = var.env
# }
