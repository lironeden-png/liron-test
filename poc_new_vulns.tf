# New intentionally-vulnerable resources for the GHAS PR-attach POC.
# Each resource trips a distinct Tenable Cloud Security IaC policy across severities.

provider "aws" {
  region = "us-east-1"
}

# Public S3 bucket with public-read ACL -> High
resource "aws_s3_bucket" "poc_public_bucket" {
  bucket = "poc-ghas-public-bucket"
  acl    = "public-read"
}

# Unencrypted S3 bucket (no server-side encryption) -> Medium
resource "aws_s3_bucket" "poc_unencrypted_bucket" {
  bucket = "poc-ghas-unencrypted-bucket"
}

# Security group open to the world on SSH -> High
resource "aws_security_group" "poc_open_ssh" {
  name = "poc-open-ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Public KMS key (grants access to everyone) -> Critical
resource "aws_kms_key" "poc_public_key" {
  description = "poc public cmk"
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