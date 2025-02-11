# Configure the Azure provider
terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 4.17.0"
        }
    random = {
        source  = "hashicorp/random"
        version = "~>3.6.3"
    }
    }
    
    required_version = "~> 1.10.5"
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "{{ resource_group_name }}"
  location = "{{ location }}"
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "{{ storage_account_name }}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "storage_container" {
  name                  = "{{ storage_container_name }}"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "storage_account_name" {
  value = azurerm_storage_account.storage_account.name
}

output "storage_container_name" {
  value = azurerm_storage_account.storage_container.name
}
