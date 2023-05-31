variable "name" {}

variable "random_name_suffix" {
  default = true
}

variable "rg" {
  type = object({
    name     = string
    location = string
  })
}

variable "storage_account_tier" {
  default = "Standard"
}

variable "storage_account_replication_type" {
  default = "GRS"
}

variable "queue_encryption_key_type" {
  default = "Service"
}

variable "table_encryption_key_type" {
  default = "Service"
}