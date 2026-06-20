vnsg = {
  name                = "nsg1"
  location            = "centralindia"
  resource_group_name = "rg1"

  security_rule {
    name                       = "rule1"
    priority                   = 104
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

}