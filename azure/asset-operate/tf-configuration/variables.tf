variable "env" {
  type = string
}

# Resource Group
variable "resource_group_name" {
  type = string
}

# VNet
variable "virtual_network_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

# Subnets
variable "private_link_subnet_name" {
  type = string
}

variable "delegated_subnet_name" {
  type = string
}

variable "private_link_address_prefixes" {
  type = list(string)
}

variable "delegated_subnet_address_prefixes" {
  type = list(string)
}

# Storage Account
variable "storage_account_name" {
  type = string
}

variable "blob_container_name" {
  type = string
}

variable "container_access_type" {
  type = string
}

# App Service
variable "app_service_plan_name" {
  type = string
}

variable "tier" {
  type = string
}

variable "size" {
  type = string
}

variable "frontend_app_service_name" {
  type = string
}

variable "backend_app_service_name" {
  type = string
}


# MSSQL Server
variable "mssql_server_name" {
  type = string
}

variable "mssql_server_version" {
  type = string
}

variable "login" {
  type = string
}

variable "password" {
  type = string
}

# MSSQL Database
variable "mssql_database_name" {
  type = string
}

variable "collation" {
  type = string
}

variable "license_typy" {
  type = string
}

variable "max_size" {
  type = string
}

variable "sku_name" {
  type = string
}

variable "enclave" {
  type = string
}

variable "min_capacity" {
  type = string
}

variable "auto_pause_delay_in_minutes" {
  type = string
}
