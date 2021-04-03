# ######################
# ## Network - Output ##
# ######################

output "web_linux_vm_ip_address"{
  value= module.nodeServerForMqtt.web_linux_vm_ip_address
}

output "web_linux_vm_admin_username" {
  description = "Username password for the Virtual Machine"
  value       = module.nodeServerForMqtt.web_linux_vm_admin_username
  #sensitive   = true
}

output "web_linux_vm_admin_password" {
  description = "Administrator password for the Virtual Machine"
  value       = module.nodeServerForMqtt.web_linux_vm_admin_password
  #sensitive   = true
}

