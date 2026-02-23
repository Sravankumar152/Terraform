resource "aws_route53_record" "www" {
  for_each = aws_instance.example
  zone_id = var.zone_id
  #interpolation
  name    = "${each.key}.${var.domainname}"
  type    = var.type
  ttl     = var.ttl
  #records = [aws_instance.example[count.index].private_ip]
  records = each.key == "webserver" ? [each.value.public_ip]:[each.value.private_ip]
}




  
