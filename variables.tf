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

# rds snapshot arn vartiables
variable "database_snapshot_identifier" {
  default = "arn:aws:rds:eu-west-2:904233097435:snapshot:trainium-rds-db-snapshot-rentzone-february-2025"
  description = "database snapshot"
  type = string
}

variable "database_instance_class" {
  default = "db.t3.micro"
  description = "database instance class"
  type = string
}

variable "database_instance_identifier" {
  default = "trainium-rds-db"
  description = "database instance identifier"
  type = string
}

variable "multi_az_deployment" {
  default = false
  description = "create a standby db instance"
  type = bool
}

# ssl certificate variables
variable "ssl_certificate_arn" {
  default = "arn:aws:acm:eu-west-2:904233097435:certificate/ca4fd7b8-6473-43ed-a1bd-98d8f9fd745a"
  description = "ssl certificate arn"
  type = string
}

# sns topic variables
variable "email_operator" {
  default = "trainiumtech@gmail.com"
  description = "a valid email address"
  type = string
}

# asg variables
variable "launch_template_name" {
  default = "trainium-launch-template"
  description = "name of launch template"
  type = string
}

variable "ec2_image_id" {
  default = "ami-0f21e15a9d029b405"
  description = "id of the ami"
  type = string
}

variable "ec2_instance_type" {
  default = "t2.micro"
  description = "the ec2 instance type"
  type = string
}

variable "ec2_key_pair_name" {
  default = "eckeypair"
  description = "name of the ec2 key pair"
  type = string
}

# route-53 hosted zone variables
variable "domain_name" {
  default = "trainiumcloud.com"
  description = "domain name"
  type = string
}

variable "record_name" {
  default = "www"
  description = "sub domain name"
  type = string
}