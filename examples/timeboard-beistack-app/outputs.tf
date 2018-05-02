output "timeboard_java_beistack-app_title_api" {
  value       = "${module.timeboard_java_beistack-app.title_api}"
  description = "The title of datadog timeboard for API"
}

output "timeboard_java_beistack-app_title_asg" {
  value       = "${module.timeboard_java_beistack-app.title_asg}"
  description = "The title of datadog timeboard for ASG"
}

output "timeboard_java_beistack-app_title_elb" {
  value       = "${module.timeboard_java_beistack-app.title_elb}"
  description = "The title of datadog timeboard for ELB"
}

output "timeboard_java_beistack-app_title_java" {
  value       = "${module.timeboard_java_beistack-app.title_java}"
  description = "The title of datadog timeboard for Java"
}

output "timeboard_java_beistack-app_title_rpc" {
  value       = "${module.timeboard_java_beistack-app.title_rpc}"
  description = "The title of datadog timeboard for RPC"
}

output "timeboard_java_beistack-app_title_system" {
  value       = "${module.timeboard_java_beistack-app.title_system}"
  description = "The title of datadog timeboard for System"
}
