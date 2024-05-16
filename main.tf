provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-02bf8ce06a8ed6092"  # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "AppServer"
  }
}

output "instance_id" {
  value = aws_instance.app_server.id
}
