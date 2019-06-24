### Target Group

#####  Input variables
#####  Map  Name = Service Name  NodePort NodePort  Protocol = Protocol to use
####   Group Name, such as px-test, prepended to service name
####   vpc_id:  ID of vpc where target group will live

resource "aws_alb_target_group" "tg" {
  name     = "${var.name}-${lookup(var.groups[count.index], "ShortName")}"
  port     = "${lookup(var.groups[count.index], "NodePort")}"
  protocol = "${lookup(var.groups[count.index], "Protocol")}"
  vpc_id   = "${var.vpc_id}"
  count    = "${length(var.groups)}"
  tags = {

      Name = "${var.name}-${lookup(var.groups[count.index], "ShortName")}",
      env = "${var.env}"

  }

}
