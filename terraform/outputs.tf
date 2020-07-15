output "server_ip" {
        value = "${aws_instance.jenkins_master.public_ip}"
        description = "Pub Server ip"
}
