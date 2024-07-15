# variable "vpc_id" {
#   description = "Provide the VPC ID that the security group will be created in."
#   type        = string
# }

# variable "application_id" {
#   description = "The application ID tag is used to designate the application of the associated AWS resource."
#   type        = string
#   validation {
#     condition     = length(var.application_id) > 0
#     error_message = "Provide a valid application ID"
#   }
# }

# variable "env_prefix" {
#   description = "The environment tag is used to designate the environment stage of the associated AWS resource."
#   type        = string
#   default     = "dev"
#   validation {
#     condition     = contains(["development", "qa", "test", "prod"], var.env_prefix)
#     error_message = "Environment must be one of 'development', 'qa', 'test', 'prod'."
#   }
# }
