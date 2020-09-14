

resource "aws_instance" "webservers" {
	#count = "${length(var.subnets_cidr)}" 
	ami = var.webservers_ami
	instance_type = var.instance_type
	security_groups = ["${aws_security_group.webservers.id}"]
	subnet_id = "${aws_subnet.public.id}"
	#user_data = "${file("install_httpd.sh")}"

	tags = {
	  Name = "Server1"
	}
}
