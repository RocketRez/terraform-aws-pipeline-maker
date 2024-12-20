output "codepipeline_arn" {
  description = "codepipeline ARN"
  value       = aws_codepipeline.codepipeline.arn
}

output "codepipeline" {
  description = "codepipeline"
  value       = aws_codepipeline.codepipeline
}

output "codebuild_role" {
  description = "codebuild role"
  value       = aws_iam_role.codebuild_role
}