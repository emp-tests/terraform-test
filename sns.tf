resource "aws_sns_topic" "emp_test_topic" {
  name = var.sns_topic_name
  display_name = var.sns_topic_display_name

  tags = {
    Environment = var.tags_environment
    Application = var.tags_application
  }
}

output "SNS_Topic_ARN" {
  value = aws_sns_topic.emp_test_topic.arn
}
