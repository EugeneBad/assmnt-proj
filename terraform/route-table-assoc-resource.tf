resource "aws_route_table_association" "a" {
  subnet_id      = "${aws_subnet.assmnt-prep-subnet.id}"
  route_table_id = "${aws_route_table.assmnt-prep-rt.id}"
}
