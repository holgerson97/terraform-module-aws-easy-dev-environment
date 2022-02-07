output "aws_development_envrionment_instance_ip" {
  value = module.aws_development_envrionment.lightsail_instance_server_name[*]
}