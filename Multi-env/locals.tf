locals {
  ami_id = data.aws_ami.resource.id
  environment = terraform.workspace
}