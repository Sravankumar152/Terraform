variable "project" {

    default = "Roboshop"
  
}


variable "instance_type" {

    default = {

        dev = "t3.micro"
        stg = "t3.small"
        prod = "t3.medium"
    }
  
}