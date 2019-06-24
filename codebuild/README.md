# CodeBuild

## Terraform for a basic CodeBuild project. 

Manual Steps (Terraform has not been updated as of 6/5/2019 to support this functionality)
 Currently requires manually adding a webhook to the source.  The github_webhook https://www.terraform.io/docs/providers/github/r/repository_webhook.html should work if you are managing a GitHub Organization, however it does not appear to work for personal repositories at this time.    
 Enable Semantic Version in Artifact  - not currently implemented in Terraform
