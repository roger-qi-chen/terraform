resource "azurerm_storage_container" "storage_container" {
  name                  = var.blob_container_name
  storage_account_id    = var.storage_account_name.id
  container_access_type = var.container_access_type
}
