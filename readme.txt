How to use the cloudformation template to create CloudFormation Stack:

1. Download the CF template from the following URL:
https://github.com/luche2017/git/blob/master/createJenkinsServerUsingAWSAndChef.json

2. Create CF stack using AWS console:
  - On the "Specify Details" page, enter the following information:
      Enter Stack name,
      Select Instance Type, "t2.micro" is the default
      Enter the name of your private key pair,
      Enter "OperatorEmail", email will be sent to it for cloud watch related alarms and notifications.
      Enter "SSHLocation", the default is 0.0.0.0.

  - Click "Next" on the next two pages, 
  - Check "I acknowledge that AWS CloudFormation might create IAM resources" checkbox, clickon "Create"

3. After the stack is created successfully, verify the following:
  - launch http://<EC2Instance_Public_DNS_Name>:8080/jenkins to bring up jenkins.
      note: The instruction to get the initial password for the Admin user is displayed on the Jenkins intial page.
  - One EC2Instance will be running with one IAM user and role will be created, the EC2Instance should be registered with
    a Elastic Load Balancer and should be configured in an Auto Scaling Group.  Logs for monitoring EC2Instance will be 
    monitored by CloudWatch.
    
Implementation:
Use CloudFormation to create and configure EC2Instance, IAM, ELB, ASG, CloudWatch.
Use Chef Solo to install Tomcat, Jenkins.
Cookbook location: 

references:
https://dzone.com/articles/jenkins-templates-for-aws-cloudformation
http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html
https://stelligent.com/category/cloudformation/
