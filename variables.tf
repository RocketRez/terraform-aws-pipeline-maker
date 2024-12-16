variable "region" {
  type        = string
  default     = "eu-west-1"
  description = "The region for the AWS resources"
}

variable "organization_repo_name" {
  type        = string
  description = "The org and repo for the deployment"
}

variable "applications_details" {
  type = map(object({
    application_cluster_name       = string
    application_service_name       = string
    application_deployment_timeout = string
    application_name               = string
    application_repo_name          = string
    branchName                     = string
    application_codebuild_env_variables = list(object({
      name  = string
      value = string
      type  = string #PLAINTEXT or PARAMETER_STORE
    }))
    buildspec_path   = string
    has_deploy_stage = bool
    input_artifacts = list(string)
    output_artifacts = list(string)
  }))
  description = "Application details for each application"
}

variable "vpc_id" {
  type        = string
  description = "The id of the vpc"
  default     = ""
}

variable "project_name" {
  type        = string
  description = "project name"
}

variable "security_group_ids" {
  type        = list(string)
  default     = []
  description = "The supplied sg id"
}

variable "subnets" {
  type        = list(string)
  description = "list of subnet ids"
  default     = []
}

variable "iam_codebuild_full_access" {
  type        = bool
  description = "iam codebuild full access"
  default     = false
}

variable "codebuild_image" {
  type        = string
  description = "codebuild image"
  default     = "aws/codebuild/standard:5.0"
}
variable "use_default_artifact_s3_buckets" {
  type        = bool
  description = "use distinct buckets for codebuild and codepipeline"
  default     = true
}

variable "codepipeline_bucket" {
  type        = string
  description = "codepipeline bucket"
  default     = ""
}

variable "codestar_connection_arn" {
  type        = string
  description = "codepipeline bucket"
}
