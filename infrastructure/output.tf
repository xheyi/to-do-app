output "alb_controller_role_arn" {
  value = aws_iam_role.alb_controller.arn
}

output "eks_cluster_name" {
  value = aws_eks_cluster.main.name
}