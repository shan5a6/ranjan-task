##### Packer
We should make sure that we have to track the changes what we are performing in the infrastructure
hence I am tracking all the changes getting performed to the image using Packer

To build the image execute the below from packer folder & it will create image with name "jenkins-image-ranjan"

packer build -var-file=variables.json ami.json

This is going to install and configure jenkins & dockers in the server.
