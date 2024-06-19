provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Ubuntu Server 20.04 LTS
  instance_type = "t2.micro"

  tags = {
    Name = "DevOpsInternTaskInstance"
  }
}
