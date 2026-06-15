resource "azurerm_virtual_network" "vnet1" {
  name                = "peternetwork1"
  resource_group_name = azurerm_resource_group.rg1.name
  address_space       = ["10.0.1.0/24"]
  location            = azurerm_resource_group.rg1.location
}

resource "azurerm_virtual_network" "vnet2" {
  name                = "peternetwork2"
  resource_group_name = azurerm_resource_group.rg2.name
  address_space       = ["10.0.2.0/24"]
  location            = azurerm_resource_group.rg2.location
}

resource "azurerm_virtual_network_peering" "peering1" {
  name                      = "peer1to2"
  resource_group_name       = azurerm_resource_group.rg1.name
  virtual_network_name      = azurerm_virtual_network.vnet1.name
  remote_virtual_network_id = azurerm_virtual_network.vnet2.id
}

resource "azurerm_virtual_network_peering" "peering2" {
  name                      = "peer2to1"
  resource_group_name       = azurerm_resource_group.rg2.name
  virtual_network_name      = azurerm_virtual_network.vnet2.name
  remote_virtual_network_id = azurerm_virtual_network.vnet1.id
}