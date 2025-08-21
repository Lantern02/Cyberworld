resource "aws_instance" "production" {
  count         = 3
  ami           = "ami-020cba7c55df1f615"
  instance_type = "t3.micro"
  key_name      = "Terraform"

  vpc_security_group_ids = [
    aws_security_group.allow_ssh.id,
    aws_security_group.allow_http.id,
    aws_security_group.allow_egress.id
  ]

  user_data = file("script.sh")

  tags = {
    Name = "production-${count.index + 1}"
  }
}
