output "instance_id" {
  description = "Recipe webapp EC2 instance id"
  value       = aws_instance.recipe_webapp.id
}

output "public_ip" {
  description = "Public IP address of recipe webapp"
  value       = aws_instance.recipe_webapp.public_ip
}

output "webapp_url" {
  description = "Recipe webapp HTTP URL"
  value       = "http://${aws_instance.recipe_webapp.public_dns}"
}
