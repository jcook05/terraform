output "target_group_ids" { value = "${join(",", aws_alb_target_group.tg.*.id)}" }

output "target_group_arns" { value = "${join(",", aws_alb_target_group.tg.*.arn)}" }