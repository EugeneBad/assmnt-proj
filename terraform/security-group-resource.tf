resource "aws_security_group" "assmnt-prep-sg" {
  name = "assmnt-prep-sg"
  vpc_id = "${aws_vpc.assmnt-prep-vpc.id}"
  ingress {
    from_port = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
}
