module "minikube" {
  source = "github.com/scholzj/terraform-aws-minikube"

  aws_region    = "us-east-1"
  cluster_name  = "robodhop"
  aws_instance_type = "t3.medium"
  ssh_public_key = "~/.ssh/satish-git.pub"
  aws_subnet_id = "subnet-062ff4f5725a20456" # default vpc subnet id
  # By default centos7 AMI is used
  #ami_image_id = "ami-b81dbfc5"
  hosted_zone = "projoy.store"
  hosted_zone_private = false

  tags = {
    Application = "Minikube"
  }

  addons = [
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/storage-class.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/heapster.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/dashboard.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/external-dns.yaml"
  ]
}