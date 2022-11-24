resource "random_id" "this" {
  count = var.random_name_suffix ? 1 : 0
  keepers = {
    name = var.name
  }
  byte_length = 4
}

resource "azurerm_storage_account" "this" {
  name = var.random_name_suffix ? "${var.name}${random_id.this[0].dec}" : var.name
  resource_group_name = var.rg.name
  location = var.rg.location
  account_tier = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  queue_encryption_key_type = var.queue_encryption_key_type
  table_encryption_key_type = var.table_encryption_key_type
  infrastructure_encryption_enabled = true
}