resource "aws_instance" "ec2" {
  ami                    = var.ami_id 
  instance_type          = var.instance_type  
  key_name               = var.key_name 
  subnet_id              = var.subnet_name  
  vpc_security_group_ids = [aws_security_group.security-group.id] 
  iam_instance_profile   = var.iam_instance_profile_name

  root_block_device {
    volume_size = var.root_volume_size 
  }

  user_data = templatefile("./tools-install.sh", {})

  tags = {
    Name = var.instance_name  
  }
}