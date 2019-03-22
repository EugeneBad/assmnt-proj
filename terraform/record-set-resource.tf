data "aws_route53_zone" "assmnt-prep-hosted-zone" {
  name         = "hochetto.com."
}

resource "aws_route53_record" "www" {
  zone_id = "${data.aws_route53_zone.assmnt-prep-hosted-zone.zone_id}"
  name    = "hochetto.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_eip.assmnt-prep-eip.public_ip}"]
}
