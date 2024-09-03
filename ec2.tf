resource "aws_instance" "web" {
  ami           = "ami-0522ab6e1ddcc7055"  # Directly specify the AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
