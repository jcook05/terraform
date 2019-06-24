

################################################################################################################
## Provider
################################################################################################################

# Specify the provider and access details
provider "aws" {
  region = "${var.aws_region}"
  profile = "default"
  
}


################################################################################################################
## Backend - Remote State
################################################################################################################

/* 
terraform {
  backend "s3" {
    bucket = "your-terraform-state-bucket"
    region = "us-west-2"
    profile = "your-profile"
    key = "spa/codebuild/terraform.tfstate"
    
  }
}
  */

resource "aws_codebuild_project" "example" {
  name          = "${var.codebuild_project}"
  description   = "Serverless Portfolio Build"
  build_timeout = "5"
  service_role  = "${var.codebuild_role_arn}"

  artifacts {
    type = "S3"
    name = "${var.artifact-name}"
    location = "${var.s3_bucket}"
    packaging = "ZIP"
  }

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/standard:1.0"
    type                        = "LINUX_CONTAINER"
    image_pull_credentials_type = "CODEBUILD"

  }

  source {
    type            = "GITHUB"
    location        = "${var.github_repo}"
    git_clone_depth = 1

    auth {
      type     = "OAUTH"
    }
  }

  tags = {
    "Environment" = "Test",
    "Name" = "Serverless Portfolio"
  }
}

# aws_codebuild_webhook._
resource "aws_codebuild_webhook" "example" {
  project_name = "${aws_codebuild_project.example.name}"
}

