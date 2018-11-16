resource "aws_subnet" "assmnt-proj-subnet" {
  vpc_id     = "${aws_vpc.assmnt-proj-vpc.id}"
  cidr_block = "10.0.1.0/24"
}
