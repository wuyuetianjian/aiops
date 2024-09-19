output "public_ip" {
  description = "vm public ip address"
  value       = module.cvm.public_ip
}

output "private_ip" {
  description = "vm private ip address"
  value       = module.cvm.private_ip
}
