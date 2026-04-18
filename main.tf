resource "aws_instance" "ec2_instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  user_data = file("${path.module}/scripts/startup.sh")

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = var.root_volume_type
  }

  tags = merge(
    {
      Name = var.instance_name
    },
    var.tags,
  )
}
