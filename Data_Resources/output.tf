output "ec2_output" {

    value = data.aws_ami.resource.id
    description = "value"
  
}


output "manualinstance" {

    value = data.aws_ami.example
    description = "value"
  
}