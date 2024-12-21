resource "azurerm_kubernetes_cluster" "AKS" {
  for_each = var.Devops_AKS
  name                = each.value.azurerm_kubernetes_cluster
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
    network_profile {
    network_plugin = "azure"
    network_policy = "calico"
  }

  tags = {
    Environment = "Production"
  }
}

