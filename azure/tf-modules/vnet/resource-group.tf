resource "random_pet" "rg_name" {
  prefix = var.resource_group_name_prefix
}

# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = random_pet.rg_name.id
  location = var.resource_group_location
  tags = {
    environment = "dev"
    source      = "Terraform"
    owner       = "Roger"
  }
}
