#### VPC ####

resource "aws_vpc" "vpc-test-jenkins" {
  cidr_block  = "10.181.130.0/24" # ���� �ʿ�
  enable_dns_hostnames = true

  tags = {
    Name = "vpc-test-jenkins"
  }
}