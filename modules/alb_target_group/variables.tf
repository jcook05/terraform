

variable "groups" {

    description = "List of maps containing keys Name, Port and Protocol"
    type = "list"
}

variable "name" {

    description = "Prepended to group name, for example leeds-test"
}

variable "vpc_id" {

    description = "vpc for target group"
}

variable "env" {

    description = "Environment classifier"
}

variable "instances"  {

   description = "list of instances to attach to target group"
   type = "list"
}