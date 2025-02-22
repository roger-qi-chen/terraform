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