output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.dev_app1.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.dev_app1.public_ip
}

output "private_ip" {
  description = "The private IP address of the EC2 instance"
  value       = aws_instance.dev_app1.private_ip
}

output "public_dns" {
  description = "The public DNS of the EC2 instance"
  value       = aws_instance.dev_app1.public_dns
}
