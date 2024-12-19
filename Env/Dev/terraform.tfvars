Devops_RG = {
  Dev-RG-Prod = {
    azurerm_resource_group = "Devops-AKS_RG"
    location               = "westus"
  }
}

Devops_ACR = {
  Devops-AKS-ACR = {
    azurerm_resource_group     = "Devops-AKS_RG"
    location                   = "westus"
    azurerm_container_registry = "devops-aks-acr-prod"

  }
}

Devops_AKS = {
  devops-AKS = {
    azurerm_kubernetes_cluster = "Devops-AKS-Prod"
    azurerm_resource_group     = "Devops-AKS_RG"
    location                   = "westus"
  }
}

Devops_SQL-DB = {
  devops-Sql-db-1 = {
    azurerm_sql_server     = "devops-sql-ser-prod"
    azurerm_resource_group = "Devops-AKS_RG"
    location               = "westus"
    azurerm_sql_database   = "devops-sql-Db-prod"

  }
}