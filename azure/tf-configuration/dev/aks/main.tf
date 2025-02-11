# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.54.0"
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
  # source = "git@github.com:terraform.git//azure/tf-modules/aks" # 
  source = "/Users/roger/terraform/azure/tf-modules/aks"

  resource_group_name = var.resource_group_name
  location            = var.location
  cluster_name        = var.cluster_name
  kubernetes_version  = var.kubernetes_version
  system_node_count   = var.system_node_count
  # node_resource_group = var.node_resource_group
  dns_prefix = var.dns_prefix
  acr_name   = var.acr_name
}
