{
 "AWSTemplateFormatVersion": "2010-09-09",
  "Resources": {
    "SNSTopic": {
      "Type": "AWS::SNS::Topic",
      "Properties": {
        "TopicName": "${sns_topic_name}",
        "DisplayName": "no-reply",
        "Subscription": [
          ${sns_subscription_list}
        ]
      }
    }
  }
}