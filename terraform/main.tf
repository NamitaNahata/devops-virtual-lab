provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devops_server" {
  ami                         = "ami-0c02fb55956c7d316"
  instance_type               = "t2.micro"
  key_name                    = "my-key"
  associate_public_ip_address = true

  vpc_security_group_ids = ["sg-0fc28cf373c54c2c2"]

  tags = {
    Name = "DevOps-Lab-Server"
  }
}