resource "aws_instance"  "ec2_intance" {
     ami                    = data.aws_ami.amazon-linux-2.id
     instance_type          = "t3.micro"
     subnet_id              = aws_subnet.public_1.id
     vpc_security_group_ids = [aws_security_group.ec2_security_group.id]
     key_name               = "ekskeypair"
     
     tags = {
         Name = "ec2 service"
  }
}

output "public_ip4_address" {
     value = aws_instance.ec2_intance.public_ip
}
