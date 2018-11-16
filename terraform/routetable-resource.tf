resource "aws_route_table" "assmnt-proj-rtb" {
  vpc_id = "${aws_vpc.assmnt-proj-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.assmnt-proj-igw.id}"
  }
}

resource "aws_route_table_association" "assmnt-proj-rtb-assoc" {
  subnet_id      = "${aws_subnet.assmnt-proj-subnet.id}"
  route_table_id = "${aws_route_table.assmnt-proj-rtb.id}"
}
