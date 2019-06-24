#### Variables

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-west-2"
}

variable "codebuild_role_arn" {
  description = "Role allowing for codebuild execution"
  default = "your-codebuild-arn"
}

variable "codebuild_project" {
  description = "Codebuild project name"
  default = "your-codebuild-project-name"
}

variable "github_repo" {
  description = "Github repo to monitor for CICD"
  default = "your-github-public-repo"
}

variable "s3_bucket" {
  description = "S3 Bucket for artifact storage"
  default = "your-s3-bucket"
}

variable "artifact-name" {
  description = "Codebuild Artifact Name"
  default = "your-artifact.zip"
} 