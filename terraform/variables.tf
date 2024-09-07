variable "region" {
  default = "ap-northeast-1"
}

variable "frontend_bucket" {
  description = "Name of the S3 bucket"
}

variable "cloudfront_price_class" {
  default = "PriceClass_100"
}