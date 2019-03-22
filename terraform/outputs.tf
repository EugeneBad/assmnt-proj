output "lb-addr" {
  value = "${aws_eip.assmnt-prep-eip.public_ip}"
}

output "be-addr" {
  value = "${aws_instance.be.public_ip}"
}

output "fe-addr" {
  value = "${aws_instance.fe.public_ip}"
}
