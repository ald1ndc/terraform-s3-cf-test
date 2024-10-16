resource "aws_wafv2_web_acl" "cloudfront" {
  #checkov:skip=CKV2_AWS_31:Ensure WAF2 has a Logging Configuration
  name  = "ce6-g2-cloudfront-waf-${var.env}"
  scope = "CLOUDFRONT"

  default_action {
    allow {}
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "ce6-g2-cloudfront-waf-${var.env}-metrics"
    sampled_requests_enabled   = true
  }

  rule {
    name     = "ce6-g2-CommonRuleSet-${var.env}"
    priority = 0
    override_action {
      none {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesCommonRuleSet"
        vendor_name = "AWS"
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "ce6-g2-CommonRuleSet-${var.env}"
      sampled_requests_enabled   = true
    }
  }
}