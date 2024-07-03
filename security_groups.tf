resource "aws_instance" "example2" {
  ami           = "ami-01e444924a2233b07"
  instance_type = "t2.micro"

  tags = {
    Name = "DevOps-Intern-VM"
  }
}

resource "aws_security_group" "example3" {
  name        = "example-sg"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  depends_on = [aws_instance.example2]
}
