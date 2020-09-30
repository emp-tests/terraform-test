# terraform-test

Terraform module which creates an AWS SNS Topic, Launch Configuration, Auto Scaling Group, and two security groups.

### Usage
+ Review and modify variables in terriform.tfvars as required
+ terraform init
+ terraform plan
  + review output
+ terraform apply

### Outputs
- SNS Topic arn
- Autoscaling Group arn

### Input Variables

+ aws_region
+ vpc_id
+ sns_topic_name
+ sns_topic_display_name
+ allow_ssh_cidr
+ asg_subnets
+ Tags
  + tags_environment
  + tags_application

### Todo
- convert vpc_id to datasource lookup based on region and environment using vpc tags
- convert asg_subnets to datasource lookup based on region and environment using vpc and vpc subnet tags
