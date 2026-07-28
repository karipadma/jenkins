variable "pub_cidr" {
    description = "pub vpc"
    type = string
    default = "10.0.0.0/16"
}

variable "pri_cidr" {
    type = string
    description = "private vpc"
    default = ""
}

variable "pub_subnet_cidr" {
    type = string
    description = "public subnet cidr"


}

variable "vpc1" {
    type = string
    default = ""
}

variable "vpc2"{
    type = string
    default = ""
}

variable "pub_sub" {
    type = string
    default = ""
}

variable "create_ec2" {
  type    = bool
  default = true
}

variable "instance_type" {
  type = string
  default = ""

  validation {
    condition     = contains(["t2.micro","t3.micro"], var.instance_type)
    error_message = "Only t2.micro or t3.micro is allowed."
  }
}