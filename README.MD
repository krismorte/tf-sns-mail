# TF-SNS-EMAIL

This is a simple module to help you to create SNS with mail protocol. Below is the article and the repo that help me to create this

https://medium.com/@raghuram.arumalla153/aws-sns-topic-subscription-with-email-protocol-using-terraform-ed05f4f19b73

https://github.com/rarumalla1/terraform-projects

# HOW TO USE

It's really simple to use this module

```terraform
module "sns-email" {
  source                              = "github.com/krismorte/tf-sns-mail?ref=v1.00"
  sns_name                            = "my-sns-mail"
  sns_subscription_email_address_list = ["youremail@provider.com"]
}
```

To create a second module you need to named the cloudformation stack as below

```terraform
module "sns-email" {
  source                              = "github.com/krismorte/tf-sns-mail?ref=v1.00"
  sns_name                            = "my-sns-mail2"
  sns_stack                           = "mySecondStack" 
  sns_subscription_email_address_list = ["youremail@provider.com"]
}
```