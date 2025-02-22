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
