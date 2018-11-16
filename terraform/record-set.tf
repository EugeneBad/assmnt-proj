resource "aws_route53_record" "assmnt-proj-record-set-www" {
  zone_id = "Z3CRM5PS7PVV42"
  name    = "hochetto.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.assmnt-proj-ec2.public_ip}"]
}
