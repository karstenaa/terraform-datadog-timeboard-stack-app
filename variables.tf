variable "product_domain" {
  type        = "string"
  description = "The name of the product domain which this app stack belongs to"
}

variable "service" {
  type        = "string"
  description = "The name of the service"
}

variable "lb_name" {
  type        = "string"
  description = "The name of the load balancer"
  default     = ""
}

variable "lb_type" {
  type        = "string"
  description = "The type of the load balancer"
  default     = "application"
}

variable "java_cluster" {
  type        = "string"
  description = "The name of the java cluster"
  default     = ""
}

variable "java_gc" {
  type        = "string"
  description = "The GC algorithm which the java app uses"
}

variable "is_rpc" {
  type        = "string"
  description = "To add datadog timeboard for rpc"
  default     = true
}

variable "is_api" {
  type        = "string"
  description = "To add datadog timeboard for api"
  default     = true
}

variable "is_asg" {
  type        = "string"
  description = "To add datadog timeboard for asg"
  default     = false
}

variable "asg_name" {
  type        = "string"
  description = "The name of the asg"
  default     = ""
}
