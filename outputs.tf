output "region" {
  value = var.region
}
output "instance_id" {
  value = aws_instance.host.id
}
output "ecr_url" {
  value = aws_ecr_repository.api.repository_url
}
output "ecr_arn" {
  value = aws_ecr_repository.api.arn
}
