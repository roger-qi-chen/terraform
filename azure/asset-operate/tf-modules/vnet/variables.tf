variable "env" {
  type = string
}

# Resource Group
variable "resource_group_name" {
  type = string
}

variable "resource_group_location" {
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
