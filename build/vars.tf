variable "aws_region" {
  default = "us-east-1"
}

variable "app_name" {
  description = "The name of the project we're hosting images for"
  type        = string
  default     = "chart-review"
}

variable "app_version" {
  description = "The overarching version of the project we're building. Set this when building a new version of the project."
  type        = string
  default     = "1.0.0"
}