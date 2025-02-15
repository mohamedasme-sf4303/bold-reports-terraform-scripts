# Provider Configuration
app_name    = "reports"
environment = "dev"
location    = "eastus2"

########################################################################################
# Virtual Network
vnet_address_space = ["10.1.0.0/16"]

########################################################################################
# AKS Cluster
aks_node_count   = 3
aks_vm_size      = "Standard_D2as_v5"  
aks_os_disk_size = 30
aks_subnet_prefix = ["10.1.1.0/24"]

########################################################################################
# PostgreSQL Server
postgres_version         = "12"
postgres_storage_gb      = 32
postgres_sku             = "GP_Standard_D2ds_v4"
postgres_subnet_prefix = ["10.1.2.0/24"]

########################################################################################
# Storage Subnet
storage_subnet_prefix = ["10.1.3.0/24"]

########################################################################################
# Bold Reports Deployment
bold_reports_namespace       = "bold-services"
bold_reports_version         = "6.3.24"
app_base_url            = ""
tls_certificate_path    = ""
tls_key_path            = ""