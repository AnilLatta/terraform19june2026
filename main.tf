resource "azurerm_resource_group" "rg1" {
  name     = "rg1"
  location = "westeurope"
}
resource "azurerm_resource_group" "rg2" {
  name     = "rg2"
  location = "central india"
}
resource "azurerm_resource_group" "rg3" {
  name     = "rg3"
  location = "West us"
}

resource "azurerm_resource_group" "vars" {
  for_each = var.vargs

  name     = each.vale.name
  location = each.value.location
}
resource "azurerm_storage_account" "stgs" {
  name                     = "storga1606"
  location                 = azurerm_resource_group.rg1.location
  resource_group_name      = azurerm_resource_group.rg1.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
