# main

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# メインのプロバイダー設定
provider "aws" {
  region  = var.region
  profile = "nextjs-s3-sample"
}

# Lambda@Edge が us-east-1 リージョンのみ対応のためプロバイダーを別途準備
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
  # 必要に応じて profile を指定
  profile = "nextjs-s3-sample"
}