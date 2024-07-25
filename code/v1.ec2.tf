provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "demo-server"{
  ami = "ami-0427090fd1714168b"
  instance_type = "t2.micro"
  key_name = "dpo"
  security_groups = ["demo-sg"]
}

resource "aws_security_group" "demo-sg" {
     name       = "demo-sg"
  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "demo-server-sg"
  }
}