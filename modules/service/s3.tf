/* s3.tf: provisions a public s3 buckets for the patient files uploaded by users*/

/* Buckets */

# patient bucket
resource "aws_s3_bucket" "patients" {
  bucket        = join("-", [var.name, "patient-bucket", var.stage, var.deploy_id])
  # Destroy this bucket when destroying the stack if this isn't a production stack
  force_destroy = var.stage != "prod"

  
  tags          = {
    deploy_id    = var.deploy_id
    service_name = var.name
    stage        = var.stage
    name         = join("-", [var.name, "patient-bucket"])
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.patients.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}


# resource "aws_s3_bucket_policy" "bucket_policy" {
#   bucket = aws_s3_bucket.patients.id

#   policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Sid       = "AllowAccessForBigTati"
#         Effect    = "Allow"
#         Principal = {
#           AWS = "arn:aws:iam::848286615134:user/big-tati"
#         }
#         Action    = "s3:*"
#         Resource  = [
#           "${aws_s3_bucket.patients.arn}",
#           "${aws_s3_bucket.patients.arn}/*"
#         ]
#       },
#       {
#         Sid       = "DenyAllOtherAccess"
#         Effect    = "Deny"
#         Principal = "*"
#         Action    = "s3:*"
#         Resource  = [
#           "${aws_s3_bucket.patients.arn}",
#           "${aws_s3_bucket.patients.arn}/*"
#         ]
#       },
#     ]
#   })
# }


