
resource_group_name = "aks_rg"
location            = "Australia East"
cluster_name        = "aks_cluster"
kubernetes_version  = "1.30.4"
system_node_count   = 2
node_resource_group = "aks_nrg"
dns_prefix          = "aks"
acr_name    = "rogerchenacr"
# acr_store_name      = "storeimage"
