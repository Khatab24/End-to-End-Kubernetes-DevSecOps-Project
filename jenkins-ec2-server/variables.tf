variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "vpc-0eff8a898f6b5d791"  
}

variable "igw_name" {
  description = "The name of the Internet Gateway"
  type        = string
  default     = "igw-0bd0bee7a61492f82"  
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  default     = "subnet-00b18ef04baf62821"  
}

variable "rt_name" {
  description = "The name of the route table"
  type        = string
  default     = "rtb-000c9b57d02934c39"  
}

# Security Group
variable "sg_name" {
  description = "The name of the security group"
  type        = string
  default     = "ec2-security-group"  
}

variable "ingress_ports" {
  description = "List of ingress ports to allow in the security group"
  type        = list(number)
  default     = [22, 8080, 9000]  # Default ports for SSH, Jenkins, and SonarQube
}

# EC2 Instance
variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance"
  type        = string
  default     = "ami-0e1bed4f06a3b463d" 
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t2.2xlarge"  
}

variable "key_name" {
  description = "The name of the key pair to associate with the instance"
  type        = string
  default     = "project"  # Default key pair name
}

variable "iam_instance_profile_name" {
  description = "The name of the IAM instance profile to associate with the instance"
  type        = string
  default     = "Jenkins-instance-profile"  
}

variable "root_volume_size" {
  description = "The size of the root volume in GB"
  type        = number
  default     = 30  
}

variable "instance_name" {
  description = "The name tag for the EC2 instance"
  type        = string
  default     = "Jenkins-server"  
}

# IAM Role
variable "iam_role" {
  description = "The name of the IAM role for the EC2 instance"
  type        = string
  default     = "Jenkins-iam-role"  
}