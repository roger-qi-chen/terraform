resource "azurerm_mssql_server" "mssql_server" {
  name                         = var.mssql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.resource_group_location
  version                      = var.mssql_server_version # "12.0"
  administrator_login          = var.login # "4dm1n157r470r"
  administrator_login_password = var.password # "4-v3ry-53cr37-p455w0rd"
}

resource "azurerm_mssql_database" "mssql_database" {
  name                        = var.mssql_database_name
  server_id                   = azurerm_mssql_server.mssql_server.id
  # collation                 = var.collation # "SQL_Latin1_General_CP1_CI_AS"
  # license_type              = var.license_typy # "LicenseIncluded"
  # max_size_gb               = var.max_size # 2
  sku_name                    = var.sku_name "S0"
  # enclave_type              = var.enclave # "VBS"
  min_capacity                = var.min_capacity
  auto_pause_delay_in_minutes = var.auto_pause_delay_in_minutes 

  tags = {
    env = var.env
  }

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}
