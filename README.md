##### Packer
We should make sure that we have to track the changes what we are performing in the infrastructure
hence I am tracking all the changes getting performed to the image using Packer

To build the image execute the below from packer folder & it will create image with name "jenkins-image-ranjan"

packer build -var-file=variables.json ami.json

This is going to install and configure jenkins & dockers in the server.

##### Terraform

Creating Jenkins server
Go to Terraform folder and run the below
terraform apply .

Note: Make sure you are configuring aws cli

Once its done you are good to go

##### Jenkins
Create two build jobs java-ci,java-cd
in side java-ci copy java-ci jenkins pipeline code
in side java-cd copy java-cd jenkins pipeline code

#### Platform Creation
Follow the steps of "mysqlContainerCreation" for brining mysql db container on port 3306

Build Your nginx image with name "nginx-spring" using below

cd Spring3Hibernate
cd nginx
docker build -t "nginx-spring" .
docker run --name nginx-spring -p 80:80 nginx-spring --restart always

#### Final Execution
Once you are done with all the above start your CI & CD pipelines once its done hit on your publicipaddress
on port 80 or http
