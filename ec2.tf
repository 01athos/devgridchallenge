provider "aws" {
	access_key    = "AKIAJ7L6XEMZM7MV7CCA"
	secret_key = "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"
	region 	   = "us-east-2"
}

resource "aws_instance" "jenkins_master" {
	ami				= "ami-0b59bfac6be064b78"
	instance_type   		= "t2.micro"
	key_name			= "ansible"
	associate_public_ip_address 	= true
	subnet_id			= "subnet-0c88800b4d1404bad"
	provisioner "local-exec" {
        	command = "sleep 120; ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ec2-user --private-key ./ansible.pem -i '${aws_instance.jenkins_master.public_ip},' master.yml"
        }	 
}

