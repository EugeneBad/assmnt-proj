resource "aws_security_group" "assmnt-proj-sg" {
  name        = "allow_http"
  description = "Allow all inbound http traffic"
  vpc_id      = "${aws_vpc.assmnt-proj-vpc.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["155.94.250.81/32"]
  }

  egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  }
}
