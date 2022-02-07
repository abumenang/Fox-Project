resource "aws_instance" "Fox-server" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.Fox.id
  iam_instance_profile        = aws_iam_instance_profile.Fox-ec2-profile.id
  associate_public_ip_address = true

  tags = {
    Name = "Fox-server"
  }
}