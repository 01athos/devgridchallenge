# devgridchallenge
* Access the Instance with command "ssh -i keyname.pem ec2-user@ec2-18-216-129-210.us-east-2.compute.amazonaws.com"
* This instance contains the ansibleserver and terraform installed that I´ve used to automation the test, to run the test, please follow the steps(execute the commands) below:
	* "$sudo su -"
	* "#cd terraform-aws"
	* "#terraform apply"
	*  The third step can execute around 10 minutes, After that copy the public IpAddress on the output of the last command(I think this information is located on the last line).
	*  Open a Browser and put "http://ipaddress:8080", the jenkins will open.
	*  Access the Pipeline job and run it, after that you could see the tests results.

#### Importante #####
The key that you will use to connect on the instance will be attached on email.
