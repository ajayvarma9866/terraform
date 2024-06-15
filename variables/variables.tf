variable "image_ID" {
    type = string
    default = "ami-031d574cddc5bb371"
    description = "RHEL-9 AMI ID"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tags" {
    default = {
        project = "Expense"
        env = "dev"
        module = "DB"
        name = "DB"
    }
}

variable "sg_group" {
    default = "allow-ssh"
}

variable "sg_description" {
    default = "allowing SSH access port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}