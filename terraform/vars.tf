variable "REGION" {
  description = "aws-region"
  type        = string
  default     = "us-east-1"
}

variable "CLUSTER_NAME" {
  description = "eks cluster name"
  type        = string
  default     = "vprofile-eks"
}