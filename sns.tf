# create sns topic
resource "aws_sns_topic" "user_update" {
  name = "trainium-sns-topic"
}

# create an sns topic subscription
resource "aws_sns_topic_subscription" "notification_topic" {
  topic_arn = aws_sns_topic.user_update.arn
  protocol = "email"
  endpoint = var.email_operator
}