resource "aws_eks_cluster" "main" {
  name     = "to-do-app-cluster"
  role_arn = aws_iam_role.eks_cluster.arn

  access_config {
    authentication_mode = "API_AND_CONFIG_MAP"
  }
  
  vpc_config {
    subnet_ids = [
      aws_subnet.public1.id,
      aws_subnet.public2.id,
      aws_subnet.private1.id,
      aws_subnet.private2.id,
    ]
  }

  depends_on = [aws_iam_role_policy_attachment.eks_cluster_policy]
}


resource "aws_eks_fargate_profile" "main" {
  cluster_name           = aws_eks_cluster.main.name
  fargate_profile_name   = "app-fargate-profile"
  pod_execution_role_arn = aws_iam_role.fargate_pod_execution.arn

  subnet_ids = [
    aws_subnet.private1.id,
    aws_subnet.private2.id,
  ]

  selector {
    namespace = "default"
  }

  depends_on = [aws_eks_cluster.main]
}