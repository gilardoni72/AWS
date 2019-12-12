
resource "aws_eip" "eip" {
  #  instance = "${aws_instance.web.id}"
  vpc = true

  #le doy al Ip publico de EIP
  instance = "${aws_instance.web.id}"

  #  tags {
  #	 Name = "${var.project_name}"

  # }
}
