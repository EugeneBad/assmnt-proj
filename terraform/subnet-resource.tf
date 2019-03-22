resource "aws_subnet" "assmnt-prep-subnet" {
  vpc_id = "${aws_vpc.assmnt-prep-vpc.id}"
  cidr_block = "10.0.0.0/24"
}
