/* AWS and Deploy Config */

# AWS region
variable "aws_region" {
  description = "AWS region"
}
# A string describing what service this is for
variable "name" {
  description = "app"
}
# A string describing what stage this is for
variable "stage" {
  description = "dev"
}
# A random string to append to the end of the name
variable "deploy_id" {
  description = "What deployment ID to attach to this service and its infrastructure. Should be lowercase and alphanumeric"
}
# The Root Domain Name of the service
variable "domain_name" {
  description = "The primary domain name of the service. This will be used to create the Route53 zone and the ACM certificate."
  default = "grays.ai"
}

/* Ec2 Configuration */

# The configuration for our EC2 instance

/* RDS Configuration */

# The settings for our RDS database
variable "rds_config" {
  description = "Service Configuration for RDS"
  type        = map(any)
  # Set config values as strings and convert to the appropriate type.
  default     = {
    allocated_storage   = "5" # in GB. How much storage to allocate for the database
    instance_class      = "db.t3.micro" # The instance class to use
    engine              = "postgres" # The database engine to use
    engine_version      = "14" # The version of the database engine to use
    db_name             = "serviceDB" # The name of the database to create
    skip_final_snapshot = "true" # Whether to skip creating a final snapshot before the database is deleted
  }
}
# The user for our RDS database
variable "rds_username" {
  description = "The user for our RDS database"
  type        = string
}
# The key for our RDS database
variable "rds_password" {
  description = "The key for our RDS database"
  type        = string
}

/* VPC Configuration. We need one public subnet and two private */

# Our VPC CIDR
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Our public subnet CIDRs
variable "public_subnet_cidr" {
  description = "A list of available public subnet CIDRs"
  type        = list(string)
  default     = [
    "10.0.1.0/24", 
    "10.0.2.0/24",
  ]

}
# Our private subnet CIDRs
variable "private_subnet_cidrs" {
  description = "A list of available private subnet CIDRs"
  type        = list(string)
  default     = [
    "10.0.101.0/24",
    "10.0.102.0/24",
  ]
}

variable "lambda_s3_bucket" {
  description = "The name of the S3 bucket containing the Lambda function source"
  type = string
}

variable "lambda_s3_key" {
  description = "The key of the Lambda function source inside the S3 bucket"
  type = string
}

variable "lambda_handler" {
  description = "The handler for the Lambda function"
  type     = string
}

variable "lambda_runtime" {
  description = "The runtime for the Lambda function"
  type     = string
}

variable "lambda_timeout" {
  description = "The timeout value for the Lambda function in seconds"
  type        = number
}

variable "lambda_memory" {
  description = "The amount of memory in MB assigned to the Lambda function"
  type        = number
}

variable "weaviate_url" {
  description = "Example environment variable 1 for Lambda"
  type     = string
}

variable "weaviate_classname" {
  description = "Example environment variable 2 for Lambda"
  type     = string
}

variable "ami_version" {
  description = "Version of the AMI to use for the EC2 instance"
  type = string
}

variable "ec2_config" {
  description = "Service Configuration for EC2"
  type        = map(any)
  # Set config values as strings and convert to the appropriate type.
}