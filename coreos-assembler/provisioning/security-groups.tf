resource "aws_security_group" "sg" {
  name        = "cosa-lab-security-group"
  description = "Allow SSH inbound traffic only"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "cosa-lab-security-group"
  }
}
