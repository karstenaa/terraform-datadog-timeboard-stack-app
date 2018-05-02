output "title_api" {
  value       = "${module.api.title}"
  description = "The title of datadog timeboard for API"
}

output "title_asg" {
  value       = "${module.asg.title}"
  description = "The title of datadog timeboard for ASG"
}

output "title_elb" {
  value       = "${module.elb.title}"
  description = "The title of datadog timeboard for ELB"
}

output "title_java" {
  value       = "${module.java.title}"
  description = "The title of datadog timeboard for Java"
}

output "title_rpc" {
  value       = "${module.rpc.title}"
  description = "The title of datadog timeboard for RPC"
}

output "title_system" {
  value       = "${module.system.title}"
  description = "The title of datadog timeboard for System"
}
