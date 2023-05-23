terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.59"
    }
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.0"
#     }
  }
}

provider "snowflake" {
  role  = "{{ env_var('SNOWFLAKE_ROLE') }}"
  account = "{{ env_var('SNOWFLAKE_ACC') }}"
  username = "{{ env_var('SNOWFLAKE_USER') }}"
  region = "us-east-1"
  password = "{{ env_var('SNOWFLAKE_PWD') }}"
}

# Configure the AWS Provider
# provider "aws" {
#   region = "ap-south-1"
#   access_key = var.credentials["access_key"]
#   secret_key = var.credentials["secret_key"]
# }
