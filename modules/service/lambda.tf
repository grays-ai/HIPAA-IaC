# lambda.tf: Configuration and deployment of Lambda function

# IAM role that Lambda will assume
resource "aws_iam_role" "lambda" {
  name = join("-", [var.name, "lambda-role", var.stage, var.deploy_id])
  
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

# Attach a policy to the IAM role for S3 access and EC2 access (if needed)
resource "aws_iam_role_policy_attachment" "lambda_s3_full_access" {
  role       = aws_iam_role.lambda.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess" # Modify as needed
}

# Lambda function
resource "aws_lambda_function" "data_copy_lambda" {
  filename      = "path_to_your_lambda_function.zip"
  function_name = join("-", [var.name, "lambda", var.stage, var.deploy_id])
  role          = aws_iam_role.lambda.arn
  handler       = "index.handler" # This should match what's in your lambda code. E.g., "index.handler" if your file is `index.js` and you export a function called `handler`.

  # If the EC2 instance is in a VPC
  vpc_config {
    subnet_ids         = [aws_subnet.public[0].id]
    security_group_ids = [aws_security_group.ec2.id]
  }

  environment {
    variables = {
      WEAVIATE_URL       = var.weaviate_url
      WEAVIATE_CLASSNAME = var.weaviate_classname
    }
  }
}

# The Lambda event source, in this case, might be an AWS CloudWatch scheduled event
# This is if you want to periodically trigger the Lambda to copy data
resource "aws_cloudwatch_event_rule" "every_five_minutes" {
  name                = "every-day"
  description         = "Daily backup"
  schedule_expression = "rate(1 day)"
}

resource "aws_cloudwatch_event_target" "five_minutes_lambda" {
  rule      = aws_cloudwatch_event_rule.every_five_minutes.name
  target_id = aws_lambda_function.data_copy_lambda.function_name
  arn       = aws_lambda_function.data_copy_lambda.arn
}

resource "aws_lambda_permission" "allow_cloudwatch" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.data_copy_lambda.function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.every_five_minutes.arn
}
