resource "aws_instance" "db" {
  ami = var.image_ID
  instance_type = var.instance_name == "DB" ? "t3.small" : "t3.micro"
}