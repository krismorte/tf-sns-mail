
data "template_file" "aws_cf_sns_stack" {
  template = file("${path.module}/templates/cf_aws_sns_email_stack.json.tpl")
  vars = {
    sns_topic_name        = var.sns_name
    sns_display_name      = ""
    sns_subscription_list = join(",", formatlist("{\"Endpoint\": \"%s\",\"Protocol\": \"%s\"}", var.sns_subscription_email_address_list, "email"))
  }
}

resource "aws_cloudformation_stack" "tf_sns_topic" {
  name          = var.sns_stack
  template_body = data.template_file.aws_cf_sns_stack.rendered
  tags = {
    name = var.sns_stack
  }
}