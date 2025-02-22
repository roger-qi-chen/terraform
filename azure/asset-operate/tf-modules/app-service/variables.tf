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

variable "app_service_name" {
  type = string
}
