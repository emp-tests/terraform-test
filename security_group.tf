resource "aws_security_group" "ingress_80_anywhere_22_restricted" {
  name        = "all80_restricted_test_22"
  description = "Allow 80 from anywhere, 22 from restricted"
  vpc_id      = var.vpc_id

  ingress {
    description = "Unrestricted http traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Restricted ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allow_ssh_cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Environment = var.tags_environment
    Application = var.tags_application
  }
}
