
resource "azurerm_virtual_network" "apt_uks_vnet" {
  name                = "apt-${var.env}-uks-vnet"
  location            = azurerm_resource_group.apt_uks_rg.location
  resource_group_name = azurerm_resource_group.apt_uks_rg.name
  address_space       = [var.vnet_address_space]
}

resource "azurerm_subnet" "apt_sample_uks_snet" {
  name                 = "apt-${var.env}-sample-uks-snet"
  resource_group_name  = azurerm_resource_group.apt_uks_rg.name
  virtual_network_name = azurerm_virtual_network.apt_uks_vnet.name
  address_prefixes     = [var.sample_subnet_address_prefix]

  delegation {
    name = "delegation"
    service_delegation {
      name = "Microsoft.Web/serverFarms"
    }
  }
}