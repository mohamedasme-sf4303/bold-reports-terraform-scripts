# General Vars
variable "region" {
  description = "The AWS region"
  default     = "us-east-1"
  type        = string
}

variable "app_name" {
  description = "The application name"
  default     = "boldreports"
  type        = string
}

variable "environment" {
  description = "The environment (e.g., dev, prod)"
  default     = "dev"
  type        = string
}

variable "launch_type" {
  description = "Launch type for ECS service (EC2 or Fargate)"
  type        = string
  default     = "EC2"
}

variable "instance_class" {
  description = "Instance class for RDS or EC2"
  type        = string
  default     = "db.t3.micro"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.xlarge"
}

# Bold BI Application Variables
variable "bold_services_hosting_environment" {
  description = "The environment where Bold BI services are hosted (e.g., k8s)"
  default     = "k8s"
  type        = string
}

variable "app_base_url" {
  description = "The base URL for the Bold BI application (e.g., https://example.com)"
  default     = ""  # Leave empty to use the ALB DNS
  type        = string
}

variable "install_optional_libs" {
  description = "Comma-separated list of optional libraries for Bold BI"
  default     = "mongodb,mysql,influxdb,snowflake,oracle,clickhouse,google"
  type        = string
}

variable "bold_services_use_site_identifier" {
  description = "Flag to use a site identifier (e.g., 'true' or 'false')"
  default     = "true"
  type        = string
}

variable "id_web_image_tag" {
  description = "Image tag for ID Web container"
  type        = string
}

variable "id_ums_image_tag" {
  description = "Image tag for ID UMS container"
  type        = string
}

variable "id_api_image_tag" {
  description = "Image tag for ID API container"
  type        = string
}

variable "reports_web_image_tag" {
  description = "Image tag for Reports Web container"
  type        = string
}

variable "reports_api_image_tag" {
  description = "Image tag for Reports API container"
  type        = string
}

variable "reports_jobs_image_tag" {
  description = "Image tag for Reports Jobs container"
  type        = string
}

variable "reports_dataservice_image_tag" {
  description = "Image tag for Reports Web container"
  type        = string
}

variable "reports_viewer_image_tag" {
  description = "Image tag for Reports API container"
  type        = string
}

variable "bold_etl_image_tag" {
  description = "Image tag for Reports Jobs container"
  type        = string
}

# Startup Configuration Secrets
variable "boldreports_secret_arn" {
  description = "The ARN of the Secrets Manager secret for Bold BI configuration"
  type        = string
  default     = null # Forces user to provide a value
}

variable "db_username" {
  description = "The PostgreSQL username"
  type        = string
  default     = null # Forces user to provide a value
}

variable "db_password" {
  description = "The PostgreSQL password"
  type        = string
  default     = null # Forces user to provide a value
}

variable "bold_unlock_key" {
  description = "The Bold services unlock key"
  type        = string
  default     = null # Forces user to provide a value
}

#variable "boldbi_username" {
#  description = "The Bold BI username"
#  type        = string
#  default     = null # Forces user to provide a value
#}

#variable "boldbi_usr_password" {
#  description = "The Bold BI user password"
#  type        = string
#  default     = null # Forces user to provide a value
#}

# ECS Configuration
variable "task_cpu" {
  description = "CPU allocation for ECS container"
  type        = number
  default     = 256
}

variable "task_memory" {
  description = "Memory allocation for ECS container (in MiB)"
  type        = number
  default     = 512
}

variable "ecs_task_replicas" {
  description = "The number of ECS task replicas"
  type        = number
  default     = 1
}

variable "deployment_maximum_percent" {
  description = "Maximum percentage of tasks during deployment"
  type        = number
  default     = 200
}

variable "deployment_minimum_healthy_percent" {
  description = "Minimum percentage of healthy tasks during deployment"
  type        = number
  default     = 100
}

# SSL Configuration
variable "certificate_arn" {
  description = "ARN of the SSL/TLS certificate for HTTPS"
  type        = string
  default     = ""  # Empty default allows for flexibility
  sensitive   = true
}

# Route 53 Configuration
variable "route53_zone_id" {
  description = "Route 53 hosted zone ID"
  type        = string
  default     = "" # Optional
}
