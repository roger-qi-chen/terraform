# Environment
env                  = "staging"

# Resource Group
resource_group_name  = "asset-operate"

# VNet
virtual_network_name = "assetOperate"
address_space        = ["10.0.0.0/16"]

# Subnets
private_link_subnet_name          = "assetOperatePrivateLinkSubnet"
delegated_subnet_name             = "assetOperateDelegatedSubnet"
private_link_address_prefixes     = ["10.0.0.0/24"]
delegated_subnet_address_prefixes = ["10.0.1.0/24"]

# Blob
storage_account_name  = "assetc4e285"
blob_container_name   = "assetstaging"
container_access_type = "private"

# App Service
app_service_plan_name     = "AssetOperateFrontend"
tier                      = "Standard"
size                      = "B1"
frontend_app_service_name = "ao-web-stg"
backend_app_service_name  = "ao-back-stg"

# MSSQL
mssql_server_name           = "AssetOperateSQL"
version                     = "12.0"
login                       = ""
password                    = ""
enclave                     = var.enclave
mssql_database_name         = var.mssql_database_name
collation                   = var.collation
license_typy                = var.license_typy
# max_size                  = ""
sku_name                    = "GP_S_Gen5_1"
min_capacity                = "0.5"
auto_pause_delay_in_minutes = 60
