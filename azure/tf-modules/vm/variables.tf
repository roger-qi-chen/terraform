variable "vm_name" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
  sensitive = true
}

# variable "resource_group_name" {
#   type = string
# }

# variable "location" {
#   type = string
# }

# variable "subnet_id" {
#   type = string
# }

# variable "network_security_group" {
#   type = string
# }
