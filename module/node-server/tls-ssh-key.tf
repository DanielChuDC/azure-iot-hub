# Create tls private key
resource "tls_private_key" "ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096

  # Exec in local computer and put it in the ssh
  provisioner "local-exec" {
    command = "cat > ${var.ssh_key_name} <<EOL\n${tls_private_key.ssh.private_key_pem}\nEOL"
  }

  # Exec in local computer and put it in the pem
  provisioner "local-exec" {
    command = "cat > ${var.ssh_ecs_instance_pem_key} <<EOL\n${tls_private_key.ssh.private_key_pem}\nEOL"
  }

  provisioner "local-exec" {
    command = "chmod 600 ${var.ssh_key_name}"
  }

  # Exec in local computer and put it in the ssh public key
  provisioner "local-exec" {
    command = "cat > ${var.ssh_ecs_instance_public_key} <<EOL\n${tls_private_key.ssh.public_key_openssh}\nEOL"
  }

  provisioner "local-exec" {
    command = "chmod 600 ${var.ssh_ecs_instance_public_key}"
  }
}