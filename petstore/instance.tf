resource "aws_instance" "tfmachine" {
  instance_type          = "t2.micro"
  ami                    = "${lookup(var.AMIS, var.AWS_REGION)}"
  subnet_id              = "subnet-1fa65a42"
  vpc_security_group_ids = ["sg-0e596e285c1f03ff0"]

  tags = {
    Name = "TFManagedMachine"
    ENV  = "DEV"
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.tfmachine.private_ip} >> inventory.txt"
  }
}

output "ip" {
  value = "${aws_instance.tfmachine.private_ip}"
}
