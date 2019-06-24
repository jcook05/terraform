
output "bucket" {
value = "${aws_s3_bucket.b.bucket}"
} 

output "bucket_arn" {
value = "${aws_s3_bucket.b.arn}"
} 

output "hosted_zone_id" {
value = "${aws_s3_bucket.b.hosted_zone_id}"
} 

output "bucket_regional_domain_name" {
value = "${aws_s3_bucket.b.bucket_regional_domain_name}"
}