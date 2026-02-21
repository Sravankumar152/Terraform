resource "aws_route53_record" "www" {
    count = length(var.instances)
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domainname}"
  type    = var.type
  ttl     = var.ttl
  #records = [aws_instance.example[count.index].private_ip]
  records = var.instances[count.index] == "webserver" ? [aws_instance.example[count.index].public_ip]:[aws_instance.example[count.index].private_ip]
}




  
