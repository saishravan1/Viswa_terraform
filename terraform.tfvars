aws_ami             = "ami-051f7e7f6c2f40dc1"
instance_type       = "t2.micro"
key_name            = "vc"
region              = "us-east-1"
instance_type_count = ["t2.small", "t2.nano", "t2.medium"]
instance_type_map = {
  "dev"  = "t2.small"
  "uat"  = "t2.micro"
  "prod" = "t2.large"
}