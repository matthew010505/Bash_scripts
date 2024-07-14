terraform{
    required_providers{
        aws={
            source="hashicorp/aws"
            version= "~>4.16"
        }
    }
    required_version=">= 1.2.0"
}

provider "aws"{
    region="us-west-2"
}

resource "aws_s3_bucket"  "login page deploy"{
    bucket="login-bucket"

    tags={
        Name="Terraform -s3"
        Environmen="Dev"
    }
}