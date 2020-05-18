variable "location" {
  type        = string
  description = "The Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group which will contain the vnet resources."
}

variable "testvm_name" {
  type        = string
  description = "The name of the test host."
}

variable "admin_user" {
  type        = string
  default     = "azureadmin"
  description = "The administrative username for this host."
}

variable "subnet_id" {
  type        = string
  description = "The id of the subnet for the test vm."
}

variable "enable" {
  type        = bool
  description = "Enable creation of test vm in this subnet."
}
