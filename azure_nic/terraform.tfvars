vnic = {
      name                = "vnic1"
      location            = "centralindia"
      resource_group_name = "rg1"

      ip_configuration {
        name                          = "ipconfig1"
        subnet_id                     = each.value.ip_configuration.subnet_id
        private_ip_address_allocation = each.value.ip_configuration.private_ip_address_allocation
      }
}