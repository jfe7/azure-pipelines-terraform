
variable "env" {
  type = string
  description = "name of environment for deployment [dev, uat, prod]"
}

variable "vnet_address_space" {
  type = string
  description = "address space of virtual network"
}

variable "sample_subnet_address_prefix" {
  type = string
  description = "subnet address prefix"
}