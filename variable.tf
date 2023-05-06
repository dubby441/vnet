variable "resource_group_name" {
    type = string
    description = "Name for resource group"
}

variable "location" {
    type = string
    description = "location for the resource group"
}

variable "virtual_network_name" {
    type = string
    description = "name for virtual network"
}

variable "vnet_address_space" {
    type = list(any)
    description = "name for vnet address space"
    default = [ "10.0.0.0/16" ]
}

variable "subnets" {
    type = map (any)
    default = {
      subnet_1 = {
        name = "subnet1"
        address_prefixes = ["10.0.1.0/24"]
      }
      subnet_2 = {
        name = "subnet2"
        address_prefixes = ["10.0.2.0/24"]
      }
      subnet_3 = {
        name = "subnet3"
        address_prefixes = ["10.0.3.0/24"]
      }
    }

   
}
