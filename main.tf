module "resource_group" {
  source  = "Azure/resource-group/azurerm"
  version = "~> 2.0"

  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source = "./modules/network"
  location = var.location
  resource_group_name = module.resource_group.name
}

module "aks" {
  source = "./modules/aks"
  location = var.location
  resource_group_name = module.resource_group.name
  subnet_id = module.network.subnet_id
  cluster_name = "idp-aks"
  node_count = 3
  vm_size = "Standard_DS2_v2"
}

module "acr" {
  source = "./modules/acr"
  location = var.location
  resource_group_name = module.resource_group.name
  acr_name = "idpacr"
}

module "keyvault" {
  source = "./modules/keyvault"
  location = var.location
  resource_group_name = module.resource_group.name
  keyvault_name = "idpkv"
}

module "argocd" {
  source = "./modules/argocd"
  depends_on = [module.aks]
  cluster_name = module.aks.cluster_name
  kubeconfig_path = var.kubeconfig_path
}

