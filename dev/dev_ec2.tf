module "my_ec2" {
  source        = "../modules/ec2"
 # ec2_count     = 1
  webservers_ami        = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
  subnet_id     = "${module.my_vpc.subnet_id}"
}
