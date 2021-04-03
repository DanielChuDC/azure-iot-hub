################################
## Azure Provider - Variables ##
################################

# Azure authentication variables

# variable "azure-subscription-id" {
#   type        = string
#   description = "Azure Subscription ID"
# }

# variable "azure-client-id" {
#   type        = string
#   description = "Azure Client ID"
# }

# variable "azure-client-secret" {
#   type        = string
#   description = "Azure Client Secret"
# }

# variable "azure-tenant-id" {
#   type        = string
#   description = "Azure Tenant ID"
# }


### ssh key variable name
variable "ssh_key_name" {
  type        = string
  description = ""
}

variable "ssh_ecs_instance_public_key" {
  type        = string
  description = ""
}

variable "ssh_ecs_instance_pem_key" {
  type        = string
  description = ""
}
