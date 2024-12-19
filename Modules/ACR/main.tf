resource "azurerm_container_registry" "acr" {
  for_each            = var.Devops_ACR
  name                = each.value.azurerm_container_registry
  resource_group_name = each.value.resource_group_name
  location            = each.key.location
  sku                 = "Basic"
  admin_enabled       = false
  georeplications {
    location                = "East US"
    zone_redundancy_enabled = true
    tags                    = {}
  }

}
