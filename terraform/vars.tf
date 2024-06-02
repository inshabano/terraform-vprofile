variable "REGION" {
   description = "aws region"
   type        = string
   default     = "us-east-1"
}

variable "CLUSTER-NAME" {
   description = "eks cluster name"
   type        = string
   default     = "gitops-eks"
}