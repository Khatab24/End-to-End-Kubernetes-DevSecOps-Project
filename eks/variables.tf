# variables.tf

variable "vpc_name" {
  description = "The ID of the VPC"
  type        = string
}

variable "igw_name" {
  description = "The ID of the Internet Gateway"
  type        = string
}

variable "subnet_name" {
  description = "The ID of the subnet"
  type        = string
}

variable "sg_name" {
  description = "The ID of the security group"
  type        = string
}

variable "subnet_name2" {
  description = "The name of the second subnet"
  type        = string
}

variable "rt_name2" {
  description = "The name of the second route table"
  type        = string
}

variable "iam-role-eks" {
  description = "The IAM role for EKS"
  type        = string
}

variable "iam-role-node" {
  description = "The IAM role for EC2 nodes"
  type        = string
}

variable "iam-policy-eks" {
  description = "The IAM policy for EKS"
  type        = string
}

variable "iam-policy-node" {
  description = "The IAM policy for EC2 nodes"
  type        = string
}

variable "cluster-name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "eksnode-group-name" {
  description = "The name of the EKS node group"
  type        = string
}