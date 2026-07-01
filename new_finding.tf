# Unencrypted SQS queue -> Medium (aws-sqs-queue-encryption-disabled)
# Not present on main, so it should surface as a NEW alert on the PR.
resource "aws_sqs_queue" "unencrypted" {
  name                    = "liron-test-unencrypted-queue"
  sqs_managed_sse_enabled = false
}
