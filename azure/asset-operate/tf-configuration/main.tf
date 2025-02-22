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
  
  resource_group_name     = data.resourcazurerm_resource_group.rg.name
  resource_group_location = data.resourcazurerm_resource_group.rg.location

  env                  = var.env
  virtual_network_name = var.virtual_network_name
  address_space        = var.address_space
}

# module "app-service" {
#   # source = "git@github.com:terraform.git//azure/tf-modules/vnet" # 
#   source = "/Users/roger/terraform/azure/tf-modules/vnet"
#   env                        = var.env
# }
