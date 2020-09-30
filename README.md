# terraform-test

Terraform module which creates an AWS SNS Topic, Launch Configuration, and two security groups.

### Usage
+ Review and modify variables in terriform.tfvars as required
+ terraform init
+ terraform plan
  + review output
+ terraform apply

### Outputs
- SNS Topic arn

### Input Variables

+ aws_region
+ vpc_id
+ sns_topic_name
+ sns_topic_display_name
+ allow_ssh_cidr
+ Tags
  + tags_environment
  + tags_application

### Todo
- convert vpc_id to datasource lookup based on region and environment using vpc tags
