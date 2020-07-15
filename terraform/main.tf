data "aws_ami" "jenkins-master" {
  owners = ["self"]
  name_regex   = "jenkins-image-ranjan"
  filter {
    name   = "name"
    values = ["jenkins-image-ranjan"]
  }
  most_recent = true
}

resource "aws_instance" "jenkins_master" {
  ami                    = "${data.aws_ami.jenkins-master.id}"
  instance_type          = "${var.jenkins_master_instance_type}"
  key_name               = "${var.key_name}"

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 30
    delete_on_termination = false
  }

  tags = {
    Name   = "jenkins_master"
  }
}
