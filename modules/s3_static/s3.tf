#--------------------------------------------------------------
# This module creates subnets based on a list of cidrs.  A subnet will be created 
# for each cidr in the list. 
# 
#  Input variables:  list of cidrs, list of availability zones, vpc id
#--------------------------------------------------------------

resource "aws_s3_bucket" "b" {
  bucket = var.bucket_name
  acl    = "public-read"
  ## May need to generate a local file or use the <<EOF method
  policy = var.policy



  website {
    index_document = "index.html"
    error_document = "error.html"
  }

## Parameterized
## Conditional
##    routing_rules = 

}