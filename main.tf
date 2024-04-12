resource "aws_ecs_cluster" "ecs_cluster_dev" {
  provider = aws.dev
  name = "demo-cluster"
  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

