variable "aws_region" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "sns_topic_name" {
  type = string
}

variable "sns_topic_display_name" {
  type = string
}

variable "allow_ssh_cidr" {
  type = list(string)
}

variable "tags_environment" {
  type = string
}

variable "tags_application" {
  type = string
}
