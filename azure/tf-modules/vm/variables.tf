# variable "vm_name" {
#   type = string
# }

# variable "vm_size" {
#   type = string
# }

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "virtual_network_name" {
  type = string
}

variable "pri_subnet_name" {
  type = string
}

variable "pub_subnet_name" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
  sensitive = true
}

# variable "subnet_id" {
#   type = string
# }

# variable "network_security_group" {
#   type = string
# }
