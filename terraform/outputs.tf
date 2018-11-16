output "instance-address" {
  value = "${aws_instance.assmnt-proj-ec2.public_ip}"
}
