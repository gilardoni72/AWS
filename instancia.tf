resource "aws_instance" "web" {
  ami           = "${var.ami}"
  instance_type = "${var.instancia_tipo}"
  key_name      = "${var.key_name}"
  # subnet de otro modulo
  # subnet_id = "${var.subnet_id}"

  # asigno el securit grupo a la instancia

  vpc_security_group_ids = ["${aws_security_group.sg.id}"]

  # ARCHIVO DE CONFIGURACION HTTP
  user_data = "${file("scriptweb.txt")}"


  tags = {
    Name = "${var.project_name}-${var.ambiente}"
  }
}
