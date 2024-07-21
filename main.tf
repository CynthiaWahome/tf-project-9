provider "aws" {
    region     = "${var.region}"    
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}

# Create an EKS Cluster 
resource "aws_eks_cluster" "cluster" {
    name     = "whiz"
    role_arn = "arn:aws:iam::318175283116:role/task98_role_196452.16266026"

    vpc_config {
        subnet_ids = ["subnet-099423941e3636ec8", "subnet-03898590b78a38f5d"]
    }
    }