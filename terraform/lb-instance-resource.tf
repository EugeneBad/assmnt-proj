resource "aws_instance" "lb" {
  ami = "ami-04d217d4e635d139e"
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.assmnt-prep-subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.assmnt-prep-sg.id}"]
  key_name = "test-key"
}
