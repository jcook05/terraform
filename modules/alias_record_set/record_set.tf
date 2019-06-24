resource "aws_route53_record" "r" {
  #zone_id = "${aws_route53_zone.main.zone_id}"
  zone_id = var.zone_id
  #name = "${var.domain}"
  name = var.name
  type = "A"

  alias {
    #name = "${aws_cloudfront_distribution.cdn.domain_name}"
    name = var.alias_name
    # zone_id = "${aws_cloudfront_distribution.cdn.hosted_zone_id}"
    zone_id = var.hosted_zone_id
    #evaluate_target_health = false
    evaluate_target_health = var.evaluate_target_health
  }
}
