
resource "azurerm_app_service_plan" "apt_sample_uks_plan" {
  name                = "apt-${var.env}-sample-uks-plan"
  location            = azurerm_resource_group.apt_uks_rg.location
  resource_group_name = azurerm_resource_group.apt_uks_rg.name
  kind = "Windows"

  sku {
    tier = "Free"
    size = "F1"
  }
}