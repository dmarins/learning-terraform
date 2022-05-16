variable "aws_region" {
  type        = string
  description = ""
  default     = "sa-east-1"
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-0800f9916b7655289"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu"
    Project = "Curso AWS com Terraform"
  }
}