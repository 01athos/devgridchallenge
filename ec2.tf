provider "aws" {
	access_key    =
	secret_key = 
	region 	   = "us-east-2"
}

resource "aws_instance" "jenkins_master" {
	ami				= "ami-0b59bfac6be064b78"
	instance_type   		= "t2.micro"
	key_name			= "challenge"
	associate_public_ip_address 	= true
	provisioner "local-exec" {
        	command = "sleep 120; ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ec2-user --private-key ./challenge.pem -i '${aws_instance.jenkins_master.public_ip},' ./devgrid-playbook/site.yml"
        }	 
}

