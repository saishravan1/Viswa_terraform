variable "aws_ami" {
  type        = string
  description = "ami needed"
  default     = "ami-051f7e7f6c2f40dc1"
}
variable "instance_type" {
  type        = string
  description = "amazon instance type"
  default     = "t2.micro"
}
variable "key_name" {
  type        = string
  description = "pem file name"
  default     = "vc"
}

variable "region" {
  type        = string
  description = "region using"
  default     = "us-east-1"

}

variable "instance_type_count" {
  type    = list(string)
  default = [""]
}


variable "instance_type_map" {
    type = map(string)
  default = {}
}