variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region for deployment"
}

variable "project_name" {
  type        = string
  default     = "fargate-app"
  description = "Prefix for resources"
}