# New vulnerable resources for CR alert-recognition test.
# Not present on main, so each should surface as a NEW code-scanning alert on the PR.

# Unencrypted, publicly accessible RDS instance -> High/Critical
resource "aws_db_instance" "cr_public_unencrypted" {
  identifier          = "liron-cr-public-db"
  engine              = "postgres"
  instance_class      = "db.t3.micro"
  allocated_storage   = 20
  username            = "admin"
  password            = "SuperSecret123!"
  publicly_accessible = true
  storage_encrypted   = false
  skip_final_snapshot = true
}

# Public S3 bucket with public-read ACL -> High
resource "aws_s3_bucket" "cr_public_bucket" {
  bucket = "liron-cr-public-bucket"
}

resource "aws_s3_bucket_acl" "cr_public_bucket_acl" {
  bucket = aws_s3_bucket.cr_public_bucket.id
  acl    = "public-read"
}

# Security group open to the world -> High
resource "aws_security_group" "cr_open" {
  name = "liron-cr-open-sg"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Unencrypted EBS volume -> Medium
resource "aws_ebs_volume" "cr_unencrypted" {
  availability_zone = "us-east-1a"
  size              = 10
  encrypted         = false
}