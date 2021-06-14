
resource "azurerm_app_service" "apt_sample_uks_app" {
  name                = "apt-${var.env}-sample-uks-app"
  location            = azurerm_resource_group.apt_uks_rg.location
  resource_group_name = azurerm_resource_group.apt_uks_rg.name
  app_service_plan_id = azurerm_app_service_plan.apt_sample_uks_plan.id

  app_settings = {
    "WEBSITE_DNS_SERVER": "168.63.129.16",
    "WEBSITE_VNET_ROUTE_ALL": "1"
  }
}

resource "azurerm_app_service_virtual_network_swift_connection" "apt_sample_uks_app_integration" {
  app_service_id  = azurerm_app_service.apt_sample_uks_app.id
  subnet_id       = azurerm_subnet.apt_sample_uks_snet.id
}