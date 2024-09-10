rg_set = {
    test1 = "eastus"
    test2 = "eastus"
} 

stor = {
set = {
  name                     = "kejri1"
  resource_group_name      = "test1"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  }

set2 = {
  name                     = "kejri2"
  resource_group_name      = "test2"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
}