variable "instances" {

    type = map
    default = {
        mongodb = "t3.micro"
        redis = "t3.micro"
        mysql = "t3.small"
        webserver = "t3.micro"
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

