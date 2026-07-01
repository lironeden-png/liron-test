# Unencrypted SQS queue -> Medium
# aws-sqs-queue-encryption-disabled — triggers when sqs_managed_sse_enabled is
# explicitly false. This rule is NOT present on main, so it should surface as a
# NEW alert annotated on the PR.
resource "aws_sqs_queue" "unencrypted" {
  name                    = "liron-test-unencrypted-queue"
  sqs_managed_sse_enabled = false
}