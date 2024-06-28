module "s3_bucket" {
  source = "./modules/s3_bucket"
  name   = var.bucket_name
}

module "certificate" {
  source    = "./modules/certificate"
  domain_name = var.domain_name
  zone_id     = var.zone_id
}

module "cloudfront" {
  source               = "./modules/cloudfront"
  s3_bucket_domain_name = module.s3_bucket.bucket_name
  origin_id            = var.origin_id
  domain_name          = var.domain_name
  acm_certificate_arn  = module.certificate.acm_certificate_arn
}

module "route53" {
  source                   = "./modules/route53"
  zone_id                  = var.zone_id
  name                     = var.domain_name
  cloudfront_domain_name   = module.cloudfront.cloudfront_domain_name
  cloudfront_hosted_zone_id = "Z2FDTNDATAQYW2"  # CloudFront hosted zone ID
}
