locals {
  java_cluster = "${var.java_cluster == "" ? format("%s-app" ,var.service) : var.java_cluster }"
  lb_name      = "${var.lb_name == "" ? format("%s-lbint-01", var.service) : var.lb_name }"
  asg_name     = "${var.asg_name == "" ? format("%s-asg", var.service) : var.asg_name }"
}

module "api" {
  source = "github.com/traveloka/terraform-datadog-timeboard-api?ref=v0.1.0"

  product_domain = "${var.product_domain}"
  cluster        = "${local.java_cluster}"
  enabled        = "${var.is_api}"
}

module "asg" {
  source = "github.com/traveloka/terraform-datadog-timeboard-asg?ref=v0.1.0"

  product_domain = "${var.product_domain}"
  asg_name       = "${local.asg_name}"
  enabled        = "${var.is_asg}"
}

module "elb" {
  source = "github.com/traveloka/terraform-datadog-timeboard-elb?ref=v0.1.0"

  product_domain = "${var.product_domain}"
  lb_name        = "${local.lb_name}"
  lb_type        = "${var.lb_type}"
}

module "java" {
  source = "github.com/traveloka/terraform-datadog-timeboard-java?ref=v0.1.0"

  product_domain    = "${var.product_domain}"
  cluster           = "${local.java_cluster}"
  garbage_collector = "${var.java_gc}"
}

module "rpc" {
  source = "github.com/traveloka/terraform-datadog-timeboard-rpc?ref=v0.1.0"

  product_domain = "${var.product_domain}"
  cluster        = "${local.java_cluster}"
  enabled        = "${var.is_rpc}"
}

module "system" {
  source = "git@github.com:traveloka/terraform-datadog-timeboard-system?ref=v0.1.0"

  product_domain = "${var.product_domain}"
  cluster        = "${local.java_cluster}"
}
