# File generated by aws2tf see https://github.com/awsandy/aws2tf
# aws_subnet.subnet-0eed8d110fe361191:
resource "aws_subnet" "subnet-0eed8d110fe361191" {
  assign_ipv6_address_on_creation = false
  availability_zone               = "eu-west-1b"
  cidr_block                      = "192.168.160.0/19"
  map_public_ip_on_launch         = false
  tags = {
    "Name"                                        = "eksctl-mycluster1-cluster/SubnetPrivateEUWEST1B"
    "alpha.eksctl.io/cluster-name"                = "mycluster1"
    "alpha.eksctl.io/eksctl-version"              = "0.29.2"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "mycluster1"
    "kubernetes.io/cluster/mycluster1"            = "shared"
    "kubernetes.io/role/internal-elb"             = "1"
  }
  vpc_id = aws_vpc.vpc-mycluster1.id

  timeouts {}
}