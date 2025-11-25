data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]  
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = var.key_name
  tags          = merge(var.tags, { Name = "web1" })
}

resource "aws_instance" "db" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = var.key_name
  tags          = merge(var.tags, { Name = "db1" })
}

resource "aws_instance" "monitor" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = var.key_name
  tags          = merge(var.tags, { Name = "monitor1" })
}

