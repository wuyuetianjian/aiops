provider "tencentcloud" {
  region     = var.region
  secret_id  = var.secret_id
  secret_key = var.secret_key
}


resource "null_resource" "web" {

    connection {
      type        = "ssh"
      user        = "ubuntu" # or the user appropriate for your AMI
      private_key = file(var.private_key_path)
      host        = var.public_ip
    }

    provisioner "remote-exec" {
        inline = [
        "sudo apt-get update",
        "sudo apt-get install -y docker.io",
        "sudo systemctl start docker",
        "sudo systemctl enable docker",
        "sudo docker info"
        ]
    }

}

