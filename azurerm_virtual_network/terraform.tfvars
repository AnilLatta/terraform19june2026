vnet = {
  vnet1={
    name     = "vnet1"
    location = "centralindia"
    resource_group_name = "rg1"
    address_space = ["10.1.0.0/16"]
  }
  vnet2={
    name     = "vnet2"
    location = "westus"
    resource_group_name = "rg2"
    address_space = ["10.2.0.0/16"]
  }
  vnet3={
    name     = "vnetbastion"
    location = "westus"
    resource_group_name = "bastionrg"
    address_space = ["10.3.0.0/16"]
  }
}
