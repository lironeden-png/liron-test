# Publicly accessible, unencrypted RDS instance.
# Not present on main, so it should surface as a NEW alert on the PR.
resource "aws_db_instance" "public_unencrypted" {
  identifier          = "liron-test-public-db"
  engine              = "postgres"
  instance_class      = "db.t3.micro"
  allocated_storage   = 20
  username            = "admin"
  password            = "SuperSecret123!"
  publicly_accessible = true
  storage_encrypted   = false
  skip_final_snapshot = true
}
