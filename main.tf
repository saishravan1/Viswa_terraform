#security groups
resource "aws_security_group" "ec2_security_group" {
  name        = "ec2 security group"
  description = "allow access to ports 8080 and 22"

  ingress {
    description = "http proxy access"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "jenkins server security groups"
  }


}

#ec2
resource "aws_instance" "ec2_instance" {
#   count = length(keys(var.instance_type_count))
  ami   = var.aws_ami
  #   instance_type          = element(var.instance_type_count, count.index)
  instance_type          = var.instance_type_map["prod"]
  key_name               = var.key_name
  vpc_security_group_ids = ["${aws_security_group.ec2_security_group.id}"]
  user_data              = file("user_data.sh")

  tags = {
    "name" = "instance-${var.instance_type_map["prod"]}"
  }
}
