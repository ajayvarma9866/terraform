resource "aws_instance" "db" {
  count = 3
  ami = "ami-031d574cddc5bb371"
  instance_type = "t3.micro"
  tags = {
    Name = var.instance_names[count.index]
  }
}