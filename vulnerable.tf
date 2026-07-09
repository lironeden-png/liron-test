# Intentionally vulnerable Terraform for testing IaC SARIF output across severities.
# Each resource is written to trip one or more Tenable Cloud Security IaC policies.

provider "aws" {
  region = "us-east-1"
}

#############################################
# NEW (top-insert) — shifts every finding below down a line
#############################################

# Unencrypted RDS instance -> Medium (aws-rds-instance-encryption-disabled)
resource "aws_db_instance" "unencrypted" {
  identifier          = "liron-test-unencrypted-db"
  engine              = "mysql"
  instance_class      = "db.t3.micro"
  allocated_storage   = 20
  username            = "admin"
  password            = "changeme123!"
  skip_final_snapshot = true
  storage_encrypted   = false
}

#############################################
# CRITICAL — public IAM / KMS exposure
#############################################

# Public KMS key (policy grants access to everyone) -> Critical
resource "aws_kms_key" "public_key" {
  description = "public cmk"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = "*"
      Action    = "kms:*"
      Resource  = "*"
    }]
  })
}

# Public IAM role (trust policy allows everyone to assume) -> Critical
resource "aws_iam_role" "public_role" {
  name = "public-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = "*"
      Action    = "sts:AssumeRole"
    }]
  })
}

#############################################
# HIGH — public exposure / secrets / open SG
#############################################

# Security group allowing unrestricted inbound from the internet -> High
resource "aws_security_group" "open" {
  name        = "wide-open"
  description = "allow all inbound"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Public S3 bucket ACL -> High
resource "aws_s3_bucket" "public_bucket" {
  bucket = "liron-test-public-bucket"
}

resource "aws_s3_bucket_acl" "public_bucket_acl" {
  bucket = aws_s3_bucket.public_bucket.id
  acl    = "public-read"
}

# EC2 instance exposing secrets in user_data -> High
resource "aws_instance" "with_secret" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  user_data     = "export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
}

#############################################
# MEDIUM — encryption disabled
#############################################

# CloudTrail without KMS encryption -> Medium
resource "aws_cloudtrail" "unencrypted" {
  name                          = "unencrypted-trail"
  s3_bucket_name                = aws_s3_bucket.public_bucket.id
  include_global_service_events = true
}

# Athena workgroup without result encryption -> Medium
resource "aws_athena_workgroup" "unencrypted" {
  name = "unencrypted-wg"
}

# ---------------------------------------------------------------------------
# Fingerprint dedup test: the comment lines below intentionally shift the line
# numbers of this finding (and the CloudFront findings after it) downward.
# With partialFingerprints removed, GitHub should update the SAME alerts to the
# new lines rather than opening duplicates.
# ---------------------------------------------------------------------------

# EBS volume without encryption -> Medium
resource "aws_ebs_volume" "unencrypted" {
  availability_zone = "us-east-1a"
  size              = 8
  encrypted         = false
}

#############################################
# LOW — logging / hardening disabled
#############################################

# CloudFront distribution without logging_config -> Low
resource "aws_cloudfront_distribution" "no_logging" {
  enabled             = true
  default_root_object = "index.html"

  origin {
    domain_name = "example.com"
    origin_id   = "example"

    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "http-only"
      origin_ssl_protocols   = ["TLSv1.2"]
    }
  }

  default_cache_behavior {
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "example"
    viewer_protocol_policy = "allow-all"

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}
