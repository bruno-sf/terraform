variable "vpc_cidr" {
    default = "172.30.0.0/16"
}

variable "vpc_cidr_sn_pub_az1" {
    default = "172.30.0.0/24"
}

variable "vpc_cidr_sn_pub_az2" {
    default = "172.30.1.0/24"
}

variable "vpc_cidr_sn_priv_az1" {
    default = "172.30.10.0/24"
}

variable "vpc_cidr_sn_priv_az2" {
    default = "172.30.11.0/24"
}

variable "vpc_cidr_sn_data_az1" {
    default = "172.30.20.0/24"
}

variable "vpc_cidr_sn_data_az2" {
    default = "172.30.21.0/24"
}

variable "region" {
    type = string
    default = "us-east-1"
}

variable "environment" {
    type = string
    default = "prod"
}
/*
variable "account_id" {
    type = string
}
*/
variable "owner" {
    type = string
    default = "Owner name"
}

variable "department" {
    type = string
    default = "DevOps"
}

variable "description" {
    type = string
    default = "TF infra"
}