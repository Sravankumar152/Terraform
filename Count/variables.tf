variable "instances" {

    type = list
    default = ["mongodb","redis","mysql","catalogue","payment","user","cart","webserver"]
  
}

variable "ami_id" {

    type = string
    default = "ami-0220d79f3f480ecf5"
  
}

variable "instance_type" {

    type = string
    default = "t3.micro"
  
}

variable "ec2_tags" {
  type = map
  default = {
    Name = "variables-demo"
    Project = "roboshop"
    Terraform = "true"
    Environment = "dev"
  }
}

variable "sg_name" {

    type = string
    default = "allow_tls"
  
}

variable "sg_description" {

    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
  
}

variable "sg_from_port" {

    type = number
    default = 0
  
}

variable "sg_to_port" {

    type = number
    default = 0
  
}

variable "cidr_blocks" {

    type = list
    default = ["0.0.0.0/0"]
  
}

variable "sg_tags" {

    type = map
    default = {
        Name = "variables-demo"
        Project = "Roboshop"
        Terraform = "true"
        Environment = "dev"

    }
  
}


variable "zone_id" {

    type = string
    default = "Z08836952WMRI129YL5JF"
  
}

variable "domainname" {
    type = string
    default = "daws88.online"
}

variable "type" {

    type = string
    default = "A"
  
}

variable "ttl" {

    type = number
    default = 1
  
}

