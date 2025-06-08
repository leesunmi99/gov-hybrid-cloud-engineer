resource "aws_eks_node_group" "team2_node" {
  cluster_name    = aws_eks_cluster.team2_clu.name
  node_group_name = "eks-node"
  node_role_arn   = aws_iam_role.eks_noderole.arn
  subnet_ids      = [aws_subnet.team2_private_a.id, aws_subnet.team2_private_c.id]
  disk_size       = 20
  instance_types  = ["t3.medium"]

  scaling_config {
    desired_size = 2
    max_size     = 4
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  depends_on = [ 
    aws_iam_role_policy_attachment.eks_AmazoneEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.eks_AmazoneEKS_CNI_Policy,
    aws_iam_role_policy_attachment.eks_AmazonEC2ContainerRegistryReadOnly
   ]
}

resource "aws_iam_role" "eks_noderole" { # IAM -> 역할 -> 신뢰 관계
  name = "eks-noderole" 

    assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
}

resource "aws_iam_role_policy_attachment" "eks_AmazoneEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role = aws_iam_role.eks_noderole.name
}

resource "aws_iam_role_policy_attachment" "eks_AmazoneEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role = aws_iam_role.eks_noderole.name
}

resource "aws_iam_role_policy_attachment" "eks_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role = aws_iam_role.eks_noderole.name
}