#print jenkins url
output "website_url" {
  #   value = aws_instance.ec2_instance.*.public_ip
  value = aws_instance.ec2_instance[*].public_ip
}