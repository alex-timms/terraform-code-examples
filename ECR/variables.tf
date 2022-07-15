variable "region" {
  type        = string
  description = "AWS region"
  default     = "eu-west-1"
}

variable "environment" {
  description = "Application environment for which this network is being created. one of: ('Development', 'Integration', 'PreProduction', 'Production', 'QA', 'Staging', 'Test')"
  type        = string
  default     = "Development"
}

variable "aws_profile" {
  description = "AWS profile being used"
  type        = string
  default     = "no-named-profile"
}

variable "ecr_name" {
  default = "Un-named-ecr"
}

variable "backend_bucket" {
  description = "backend bucket to be used"
  type        = string
  default     = ""
}

#   variable "tags" {
#    default     = {}
#    type        = "map"
#    description = "Custom tags to apply to all resources."
#  }