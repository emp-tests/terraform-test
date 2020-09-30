resource "aws_autoscaling_notification" "error_notifications" {
  group_names = [
    aws_autoscaling_group.ubuntu_asg.name,
  ]

  notifications = [
    "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
    "autoscaling:EC2_INSTANCE_TERMINATE_ERROR",
  ]

  topic_arn = aws_sns_topic.emp_test_topic.arn
}

resource "aws_autoscaling_group" "ubuntu_asg" {
  name                    = "ubuntu-asg"
  launch_configuration    = aws_launch_configuration.ubuntu_launch.name
  min_size                = 2
  max_size                = 4
  desired_capacity        = 2
  vpc_zone_identifier     = var.asg_subnets
}

output "ASG_ARN" {
  value = aws_autoscaling_group.ubuntu_asg.arn
}
