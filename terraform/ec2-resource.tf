resource "aws_instance" "assmnt-proj-ec2" {
  ami           = "ami-0735ea082a1534cac"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.assmnt-proj-subnet.id}"
  key_name = "assmnt-proj"
  associate_public_ip_address = true
  vpc_security_group_ids = ["${aws_security_group.assmnt-proj-sg.id}"]
}
