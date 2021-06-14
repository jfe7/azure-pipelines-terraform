
resource "azurerm_resource_group" "apt_uks_rg" {
  name = "apt-${var.env}-uks-rg"
  location = "uk south"
}