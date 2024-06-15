variable "image_ID" {
    type = string
    default = "ami-031d574cddc5bb371"
    description = "RHEL-9 AMI ID"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "instance_name" {
    default = "frontend"
}