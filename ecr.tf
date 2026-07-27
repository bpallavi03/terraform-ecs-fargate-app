# Private Elastic Container Registry
resource "aws_ecr_repository" "app" {
  name                 = var.project_name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  # Enable force delete so the repository can be destroyed even if it contains images
  force_delete = true

  tags = {
    Name = "${var.project_name}-ecr"
  }
}

# Output the repository URL for CLI usage
output "ecr_repository_url" {
  value       = aws_ecr_repository.app.repository_url
  description = "The URL of the ECR repository"
}