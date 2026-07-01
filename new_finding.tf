# Unencrypted SQS queue (no kms_master_key_id) -> Medium
# aws-sqs-queue-encryption-disabled — a rule NOT already present on main,
# so it should surface as a NEW alert annotated on the PR.
resource "aws_sqs_queue" "unencrypted" {
  name = "liron-test-unencrypted-queue"
}
