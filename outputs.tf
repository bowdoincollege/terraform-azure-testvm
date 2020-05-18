output "name" {
  value       = var.enable ? var.testvm_name : null
  description = "The name of the test host."
}

output "admin_password" {
  value       = var.enable ? random_password.vmpw[0].result : null
  description = "The administrative password on the test host."
}

output "admin_user" {
  value       = var.enable ? var.admin_user : null
  description = "The administrative user on the test host."
}

output "private_ip" {
  value       = var.enable ? azurerm_network_interface.nic[0].private_ip_address : null
  description = "The private IP of this test host."
}
