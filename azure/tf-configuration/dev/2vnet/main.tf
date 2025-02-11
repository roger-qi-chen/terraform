# Configure the Azure provider
terraform {
  backend "azurerm" {
    resource_group_name   = "terraform-state-rg"
    storage_account_name  = "your-storage-account-name"
    container_name        = "terraform-state"
    key                   = "1rg.terraform.tfstate" # Change to "2vnet.terraform.tfstate" in 2vnet
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.16.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.6.3"
    }
  }

  required_version = "~> 1.10.5"
}

provider "azurerm" {
  # Azure subscription 1 - Subscription ID
  # Micosoft Entra ID - App registrations - New registraion - terraform
  # 
  # Micosoft Entra ID - App registrations - New registraion - terraform
  features {}
}

# locals {
#   resource_group = "my-resource-group"
#   location       = "Australia East"
# }

module "vnet" {
  # source = "git@github.com:terraform.git//azure/tf-modules/vnet" # 
  source = "/Users/roger/terraform/azure/tf-modules/vnet"

  resource_group_name_prefix = var.resource_group_name_prefix
  resource_group_location    = var.resource_group_location
  env                        = var.env
}
