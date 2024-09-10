# variable "rg_set" {
#   description = "List of resource groups"
#   type        = set(string)
#   default     = ["rg1", "rg2", "rg3", "rg4", "rg5", "rg5"]
# }
# resource "azurerm_resource_group" "yogibaba" {
#   for_each = var.rg_set
#   name     = each.value
#   location = "West Europe"
# }

variable "rg_set" {
    type = map(any)
}
resource "azurerm_resource_group" "jhandu" {
  for_each = var.rg_set
  name     = each.key
  location = each.value
}

variable "stor" {
    type = map(any)
}
resource "azurerm_storage_account" "store" {
  depends_on = [ azurerm_resource_group.jhandu ] 
  for_each = var.stor  
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}