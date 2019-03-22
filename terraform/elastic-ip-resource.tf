resource "aws_eip" "assmnt-prep-eip" {
  depends_on = ["aws_internet_gateway.assmnt-prep-igw"]
}

resource "aws_eip_association" "assmnt-prep-eip-assoc" {
  instance_id = "${aws_instance.lb.id}"
  allocation_id = "${aws_eip.assmnt-prep-eip.id}"
}
