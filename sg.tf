resource "aws_security_group" "sg" {
  name_prefix = "Security ${var.project_name}-${var.ambiente}-"
  description = "SG ${var.project_name}-${var.ambiente}"
  vpc_id      = "${var.vpc_id}"

  ingress {
    # TLS (change to whatever ports you need)
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
  lifecycle {
    create_before_destroy = true
  }
}
