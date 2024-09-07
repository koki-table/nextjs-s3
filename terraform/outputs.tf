output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}

output "s3_frontend_bucket" {
  value = aws_s3_bucket.website_bucket.id
}