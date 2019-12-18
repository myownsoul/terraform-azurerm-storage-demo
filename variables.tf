variable "resource_group_name" {
  description = "Name of resource group to deploy resources in."
  default = "resource_group_sandbox"
}

variable "location" {
  description = "Azure location where resources should be deployed."
  default     = "westus2"
}

variable "storage_account_tier" {
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. Changing this forces a new resource to be created."
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS and ZRS."
  default     = "LRS"
}
variable "storage_account_name" {
  description = "The name of the storage account"
  default     = "cnzhangystorage"
}

variable "storage_account_tags" {
  description = "The tags to the storage account resources"

  default = {
    environment = "sandbox"
    createdBy = ""
  }
}