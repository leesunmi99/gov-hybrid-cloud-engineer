resource "aws_eks_cluster" "team2_clu" {
  name     = "eks-cluster"
  role_arn = "arn:aws:iam::133713477530:role/eks-cluster"

  vpc_config {
    subnet_ids              = [aws_subnet.team2_private_a.id, aws_subnet.team2_private_c.id]
    endpoint_private_access = true
    endpoint_public_access  = true
    security_group_ids      = [aws_security_group.team2_sg.id]
  }
}

resource "aws_eks_addon" "eks_coredns" {
  cluster_name                = aws_eks_cluster.team2_clu.name
  addon_name                  = "coredns"
  addon_version               = "v1.10.1-eksbuild.4"
  resolve_conflicts_on_create = "OVERWRITE"
}

resource "aws_eks_addon" "eks_cni" {
  cluster_name                = aws_eks_cluster.team2_clu.name
  addon_name                  = "vpc-cni"
  addon_version               = "v1.15.0-eksbuild.2"
  resolve_conflicts_on_create = "OVERWRITE"
}

resource "aws_eks_addon" "eks_proxy" {
  cluster_name                = aws_eks_cluster.team2_clu.name
  addon_name                  = "kube-proxy"
  addon_version               = "v1.27.4-eksbuild.2"
  resolve_conflicts_on_create = "OVERWRITE"
}
