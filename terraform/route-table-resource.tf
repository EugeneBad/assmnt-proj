resource "aws_route_table" "assmnt-prep-rt" {
  vpc_id = "${aws_vpc.assmnt-prep-vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.assmnt-prep-igw.id}"
  }
}
