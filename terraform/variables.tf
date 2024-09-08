# variables

variable "region" {
  default = "ap-northeast-1"
}

variable "frontend_bucket" {
  description = "Name of the S3 bucket"
}

variable "cloudfront_price_class" {
  default = "PriceClass_100"
}

variable "lambda_function_name" {
  description = "Name of the Lambda@Edge function"
  default     = "edge_redirect_function"
}