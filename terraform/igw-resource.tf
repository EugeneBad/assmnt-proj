resource "aws_internet_gateway" "assmnt-proj-igw" {
  vpc_id = "${aws_vpc.assmnt-proj-vpc.id}"
}
