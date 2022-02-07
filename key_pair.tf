resource "tls_private_key" "Fox-key" {
  algorithm = "RSA"
}

resource "aws_key_pair" "Fox" {
  key_name   = var.key_name
  public_key = tls_private_key.Fox-key.public_key_openssh
}

