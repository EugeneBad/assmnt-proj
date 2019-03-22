resource "aws_internet_gateway" "assmnt-prep-igw" {
  vpc_id = "${aws_vpc.assmnt-prep-vpc.id}"
}
