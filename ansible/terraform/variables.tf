variable "aws_region" {
  default = "us-west-1"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  default = "cokerkeypair"
}

variable "tags" {
  type = map(string)
  default = {
    Project = "Infra-Automation"
    Owner   = "Yeena"
  }
}
