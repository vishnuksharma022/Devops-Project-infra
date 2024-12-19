module "Devops_RG" {
  source    = "../../Modules/RG"
  Devops_RG = var.Devops_RG

}




module "Devops_ACR" {
  depends_on = [module.Devops_RG]
  source     = "../../Modules/ACR"
  Devops_ACR = var.Devops_ACR
}


module "Devops_AKS" {
  depends_on = [module.Devops_RG]
  source     = "../../Modules/AKS"
  Devops_AKS = var.Devops_AKS

}

module "Devops_SQL-DB" {
  source        = "../../Modules/SQL-DB"
  Devops_SQL-DB = var.Devops_SQL-DB

}
