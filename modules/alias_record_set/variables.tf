
variable "zone_id" {
  type        = "string"
  description = "Host Zone Id"
}

variable "name" {
  type        = "string"
  description = "Name of record set.  For S3 alias it should be the same name as the bucket"
}

variable "alias_name" {
  type        = "string"
  description = "Name of record set alias target.  For S3 alias it should be the same name as the bucket"
}

variable "hosted_zone_id" {
  type        = "string"
  description = "Hosted zone id for alias target.  Will correspond with the regions hosted zone id. https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_website_region_endpoints"
}


variable "evaluate_target_health" {
 
  default = false
  description = "Boolean for target health evaluation"
}
