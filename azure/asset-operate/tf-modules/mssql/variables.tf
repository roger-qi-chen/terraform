variable "env" {
  type = string
}

# Resource Group
variable "resource_group_name" {
  type = string
}

# MSSQL Server
variable "mssql_server_name" {
  type = string
}

variable "version" {
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
