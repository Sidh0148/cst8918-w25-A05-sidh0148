output "public_ip_address" {
  description = "Public IP address of the deployed web server"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.rg.name
}
