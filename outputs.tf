output "s3_bucket_name" {
  value = module.s3_bucket.bucket_name
}

output "cloudfront_distribution_id" {
  value = module.cloudfront.cloudfront_distribution_id
}

output "cloudfront_domain_name" {
  value = module.cloudfront.cloudfront_domain_name
}

output "route53_record" {
  value = module.route53.route53_record
}
