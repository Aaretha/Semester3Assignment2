variable "zone_id" {
  description = "The Route 53 zone ID"
  type        = string
}

variable "name" {
  description = "The name of the DNS record"
  type        = string
}

variable "cloudfront_domain_name" {
  description = "The domain name of the CloudFront distribution"
  type        = string
}

variable "cloudfront_hosted_zone_id" {
  description = "The CloudFront hosted zone ID"
  type        = string
}
