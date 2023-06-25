provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "production_server" {
  ami                    = "ami-08e5424edfe926b43"
  instance_type          = "t2.micro"
  key_name               = "sarika1"
  vpc_security_group_ids = ["sg-00839972db6708182"]

  tags = {
    Name = "production-server"
  }
}

output "production_server_ip" {
  value = aws_instance.production_server.public_ip
}
