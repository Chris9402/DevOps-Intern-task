variable "aws_region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "eu-central-1"
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = "ami-01e444924a2233b07"
}
