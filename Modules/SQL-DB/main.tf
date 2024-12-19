
resource "azurerm_sql_server" "Sql-server" {
    for_each = var.Devops_SQL-DB
  name                         = each.value.azurerm_sql_server
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"

  tags = {
    environment = "production"
  }
}


resource "azurerm_sql_database" "sql-database" {
    for_each = var.Devops_SQL-DB
  name                = each.value.azurerm_sql_database
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  server_name         = each.value.azurerm_sql_server

  tags = {
    environment = "production"
  }

 
 
}