resource "aws_instance" "example" {
  count = length(var.instances)
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = merge (var.ec2_tags,{
    Name = var.instances[count.index]
  })
}

resource "aws_security_group" "allow_tls" {
  name        = var.sg_name
  description = var.sg_description

    egress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }
    ingress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }



  tags = var.sg_tags
}