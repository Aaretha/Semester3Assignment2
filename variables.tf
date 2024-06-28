variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "domain_name" {
  description = "The domain name for the website"
  type        = string
}

variable "zone_id" {
  description = "The Route 53 hosted zone ID"
  type        = string
}

variable "origin_id" {
  description = "The origin ID for CloudFront"
  type        = string
}
