provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "example" {
  ami                    = "ami-01e444924a2233b07"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-04053f6634ee61ca4"
  vpc_security_group_ids = [aws_security_group.example.id]
  key_name               = "devops_intern_key"
  associate_public_ip_address = true

  tags = {
    Name = "DevOpsInternTaskInstance"
  }
}

