/* Deployment and Service environment configuration */

/* AWS specific configuration */

# AWS region
variable "aws_region" {
  default = "us-east-1"
}

/* Service configuration */

# What to call resources created by this module
variable "service_name" {
  description = "Name of the application and associated resources"
  default = "gray"
}

# What stage this service is in
variable "service_stage" {
  description = "Stage of the application and associated resources"
  default = "dev"
}

variable "service_domain_name" {
  description = "The primary domain name for the application and associated resources."
  default = "grays.ai"
}

/* Application and environment configuration */

# Where and what image to use for the application. See the output of the 'build' module for configuration.

variable "ecr_url" {
    description = "The URL of the ECR repository"
    default = "848286615134.dkr.ecr.us-east-1.amazonaws.com/chart-review-ecr"
}

variable "app_version" {
  description = "Version of the application, as tagged in ECR"
  default = "latest"
}

# Django configuration

variable "django_debug" {
  description = "Whether to run Django in debug mode. 0 or 1"
  default = "1"
}

variable "django_allowed_hosts" {
  description = "A list of hosts that are allowed to access the application, as a space-separated string"
  default = "*"
}

variable "django_sql_engine" {
  description = "The database engine to use for Django"
  default = "django.db.backends.postgresql"
}

variable "django_superuser_username" {
  description = "The username of the Django superuser"
  default = "admin"
}

variable "django_superuser_email" {
  description = "The email address of the Django superuser"
  default     = "jonah.arturo@gmail.com"
}

variable "django_use_s3" {
  description = "Whether to use S3 for storing uploaded files. TRUE or FALSE"
  default = "TRUE"
}


variable "lambda_s3_bucket" {
  description = "The name of the S3 bucket containing the Lambda function source"
  default = "gray-lambda-backup"
}

variable "lambda_s3_key" {
  description = "The key of the Lambda function source inside the S3 bucket"
  default = "backup_lambda.zip"
}

variable "lambda_handler" {
  description = "The handler for the Lambda function"
  default     = "index.handler" # Example default value, adjust as needed
}

variable "lambda_runtime" {
  description = "The runtime for the Lambda function"
  default     = "python3.9" # Example default value, adjust as needed
}

variable "lambda_timeout" {
  description = "The timeout value for the Lambda function in seconds"
  default     = 900
}

variable "lambda_memory" {
  description = "The amount of memory in MB assigned to the Lambda function"
  default     = 128
}

variable "weaviate_url" {
  description = "Example environment variable 1 for Lambda"
  default     = "http://weaviate:8080"
}

variable "weaviate_classname" {
  description = "Example environment variable 2 for Lambda"
  default     = "Patients"
}
