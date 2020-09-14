# Subnets : public
resource "aws_subnet" "public" {
  #count = "${length(var.subnets_cidr)}"
  vpc_id = "${aws_vpc.terra_vpc.id}"
  #cidr_block = "${element(var.subnets_cidr,count.index)}"
  cidr_block = var.subnets_cidr
  availability_zone = var.azs
  map_public_ip_on_launch = true
  tags= {
    Name = "Subnet"
  }
}
