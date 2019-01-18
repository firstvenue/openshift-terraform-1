resource "aws_lightsail_key_pair" "aio_key" {
  name       = "aio_key"
  public_key = "${file("./helper_scripts/id_rsa.pub")}"
}

resource "aws_lightsail_instance" "aio" {
  name              = "aio"
  availability_zone = "${var.aws_zone}"
  blueprint_id      = "${var.aws_blueprint}"
  bundle_id         = "${var.aws_bundle}"
  key_pair_name     = "${aws_lightsail_key_pair.aio_key.id}"
}

resource "aws_lightsail_static_ip_attachment" "aio" {
  static_ip_name = "${aws_lightsail_static_ip.aio.name}"
  instance_name  = "${aws_lightsail_instance.aio.name}"
}

resource "aws_lightsail_static_ip" "aio" {
  name = "aio"
}
