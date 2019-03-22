resource "aws_instance" "fe" {
  ami = "ami-0642e39bd4f1c4d60"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.assmnt-prep-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.assmnt-prep-sg.id}"]
  key_name = "test-key"
  associate_public_ip_address = true
  depends_on = ["aws_instance.lb"]
}
