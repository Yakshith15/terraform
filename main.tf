resource "aws_instance" "free_tier" {
  ami           = data.aws_ami.amazon_linux_2023.id
  instance_type = var.instance_type

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
