# File generated by aws2tf see https://github.com/aws-samples/aws2tf
# aws_eks_fargate_profile.fargate1:
resource "aws_eks_fargate_profile" "fargate-profile" {
  cluster_name           = data.aws_eks_cluster.eks_cluster.name
  fargate_profile_name   = "fargate1"
  #depends_on             = [aws_eks_cluster.ateksf1]
  pod_execution_role_arn = aws_iam_role.FargatePodExecutionRole.arn
  subnet_ids      = [
    data.terraform_remote_state.net.outputs.isolated_subnet_id[0],
    data.terraform_remote_state.net.outputs.isolated_subnet_id[1],
    data.terraform_remote_state.net.outputs.isolated_subnet_id[2]
  ]

  tags = {}

  selector {
    namespace = "fargate1"
  }

  timeouts {}
}