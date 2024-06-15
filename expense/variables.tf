#ec2_variables
variable "image_ID" {
    type = string
    default = "ami-031d574cddc5bb371"
    description = "RHEL-9 AMI ID"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable instance_names {
    type = list
    default = ["db", "backend", "frontend"]
}

variable "common_tags" {
    default = {
        project = "expense"
        environment = "dev"
        terraform = "true"
    }
}

variable "tags" {
    default = {
        project = "Expense"
        env = "dev"
        module = "DB"
        name = "DB"
    }
}

#sg variables
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

#r53 variables

variable "zone_id" {
    default = "Z01047242T4D5UWNWEYCJ"
}

variable "domain_name" {
    default = "devops9866.online"
}