module "cvm" {
  source     = "../modules/cvm"
  secret_id  = var.secret_id
  secret_key = var.secret_key
  key_ids   = var.key_name
}

module "docker" {
  source     = "../modules/docker"
  public_ip  = module.cvm.public_ip
  private_ip = module.cvm.private_ip
  private_key_path = var.private_key_path
}
