output "aks_cluster_name" {
  value = module.aks.cluster_name
}

output "acr_login_server" {
  value = module.acr.login_server
}

output "keyvault_uri" {
  value = module.keyvault.vault_uri
}

