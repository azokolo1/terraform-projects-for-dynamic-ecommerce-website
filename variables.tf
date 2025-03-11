# vpc variables
variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "vpc cidr block"
  type = string
}

# public subnet variables
variable "public_subnet_az1" {
  default = "10.0.0.0/24"
  description = "public subnet az1 cidr block"
  type = string
}

variable "public_subnet_az2" {
  default = "10.0.1.0/24"
  description = "public subnet az2 cidr block"
  type = string
}

# private app variables
variable "private_app_subnet_az1" {
  default = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
  type = string
}

variable "private_app_subnet_az2" {
  default = "10.0.3.0/24"
  description = "private app subnet az2 cidr block"
  type = string
}

# private data subnet variables
variable "private_data_subnet_az1" {
  default = "10.0.4.0/24"
  description = "private data subnet az1 cidr block"
  type = string
}

variable "private_data_subnet_az2" {
  default = "10.0.5.0/24"
  description = "private data subnet az2 cidr block"
  type = string
}

# security group variables
variable "ssh_location" {
  default = "31.127.10.190/32"
  description = "ip address that casn ssh into ec2 instance"
  type = string
}