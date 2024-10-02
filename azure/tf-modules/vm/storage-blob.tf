resource "azurerm_storage_account" "sa" {
  name                     = "rogerchenstorageaccount" # Unique name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "dev"
    source      = "Terraform"
    owner       = "Roger"
  }
}

resource "azurerm_storage_container" "sc" {
  name                  = "my-storage-container"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "sb" {
  name                   = "my-storage-blob"
  storage_account_name   = azurerm_storage_account.sa.name
  storage_container_name = azurerm_storage_container.sc.name
  type                   = "Block"
  source                 = "my-test.txt"
}
