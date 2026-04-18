output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.free_tier.id
}

output "instance_arn" {
  description = "ARN of the EC2 instance"
  value       = aws_instance.free_tier.arn
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.free_tier.public_ip
}

output "public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.free_tier.public_dns
}

output "private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.free_tier.private_ip
}

output "ami_id" {
  description = "AMI ID used for the instance"
  value       = data.aws_ami.amazon_linux_2023.id
}
