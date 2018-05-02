module "timeboard_java_beistack-app" {
  source         = "../../"
  product_domain = "BEI"
  service        = "beistack"

  # lb_name = "${var.service}-lbint-01" by default
  # lb_type = "application" by default. Either "application" or "classic"

  # java_cluster = "{$var.service}-app" by default
  java_gc = "PS" # Either "PS" or "CMS"

  # is_rpc = true by default
  # is_api = false by default
  # is_asg = false by default
  # asg_name = "${var.service}-asg" by default
}
