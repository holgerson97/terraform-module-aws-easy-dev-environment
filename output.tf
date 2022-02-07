output "lightsail_instance_server_name" {
  value = aws_lightsail_instance.server[*].name
}

output "lightsail_instance_server_availability_zone" {
  value = aws_lightsail_instance.server[*].availability_zone
}

output "lightsail_instance_server_blueprint_id" {
  value = aws_lightsail_instance.server[*].blueprint_id
}

output "lightsail_instance_server_bundle_id" {
  value = aws_lightsail_instance.server[*].bundle_id
}

output "lightsail_instance_server_key_pair_name" {
  value = aws_lightsail_instance.server[*].key_pair_name
}

output "lightsail_instance_server_user_data" {
  value = aws_lightsail_instance.server[*].user_data
}

output "lightsail_instance_server_tags" {
  value = aws_lightsail_instance.server[*].tags
}

output "lightsail_instance_server_id" {
  value = aws_lightsail_instance.server[*].id
}

output "lightsail_instance_server_arn" {
  value = aws_lightsail_instance.server[*].arn
}

output "lightsail_instance_server_created_at" {
  value = aws_lightsail_instance.server[*].created_at
}

output "lightsail_instance_server_cpu_count" {
  value = aws_lightsail_instance.server[*].cpu_count
}

output "lightsail_instance_server_ram_size" {
  value = aws_lightsail_instance.server[*].ram_size
}

output "lightsail_instance_server_ipv6_address" {
  value = aws_lightsail_instance.server[*].ipv6_address
}

output "lightsail_instance_server_ipv6_addresses" {
  value = aws_lightsail_instance.server[*].ipv6_addresses
}

output "lightsail_instance_server_private_ip_address" {
  value = aws_lightsail_instance.server[*].private_ip_address
}

output "lightsail_instance_server_public_ip_address" {
  value = aws_lightsail_instance.server[*].public_ip_address
}

output "lightsail_instance_server_is_static_ip" {
  value = aws_lightsail_instance.server[*].is_static_ip
}

output "lightsail_instance_server_username" {
  value = aws_lightsail_instance.server[*].username
}

output "lightsail_instance_server_tags_all" {
  value = aws_lightsail_instance.server[*].tags_all
}

output "lightsail_instance_client_name" {
  value = aws_lightsail_instance.client[*].name
}

output "lightsail_instance_client_availability_zone" {
  value = aws_lightsail_instance.client[*].availability_zone
}

output "lightsail_instance_client_blueprint_id" {
  value = aws_lightsail_instance.client[*].blueprint_id
}

output "lightsail_instance_client_bundle_id" {
  value = aws_lightsail_instance.client[*].bundle_id
}

output "lightsail_instance_client_key_pair_name" {
  value = aws_lightsail_instance.client[*].key_pair_name
}

output "lightsail_instance_client_user_data" {
  value = aws_lightsail_instance.client[*].user_data
}

output "lightsail_instance_client_tags" {
  value = aws_lightsail_instance.client[*].tags
}

output "lightsail_instance_client_id" {
  value = aws_lightsail_instance.client[*].id
}

output "lightsail_instance_client_arn" {
  value = aws_lightsail_instance.client[*].arn
}

output "lightsail_instance_client_created_at" {
  value = aws_lightsail_instance.client[*].created_at
}

output "lightsail_instance_client_cpu_count" {
  value = aws_lightsail_instance.client[*].cpu_count
}

output "lightsail_instance_client_ram_size" {
  value = aws_lightsail_instance.client[*].ram_size
}

output "lightsail_instance_client_ipv6_address" {
  value = aws_lightsail_instance.client[*].ipv6_address
}

output "lightsail_instance_client_ipv6_addresses" {
  value = aws_lightsail_instance.client[*].ipv6_addresses
}

output "lightsail_instance_client_private_ip_address" {
  value = aws_lightsail_instance.client[*].private_ip_address
}

output "lightsail_instance_client_public_ip_address" {
  value = aws_lightsail_instance.client[*].public_ip_address
}

output "lightsail_instance_client_is_static_ip" {
  value = aws_lightsail_instance.client[*].is_static_ip
}

output "lightsail_instance_client_username" {
  value = aws_lightsail_instance.client[*].username
}

output "lightsail_instance_client_tags_all" {
  value = aws_lightsail_instance.client[*].tags_all
}

output "lightsail_public_ports_server_instance_name" {
  value = aws_lightsail_instance_public_ports.server[*].instance_name
}

output "lightsail_public_ports_server_port_info" {
  value = aws_lightsail_instance_public_ports.server[*].port_info
}

output "lightsail_public_ports_server_from_port" {
  value = aws_lightsail_instance_public_ports.server[*].id
}

output "lightsail_public_ports_client_instance_name" {
  value = aws_lightsail_instance_public_ports.client[*].instance_name
}

output "lightsail_public_ports_client_port_info" {
  value = aws_lightsail_instance_public_ports.client[*].port_info
}

output "lightsail_public_ports_client_from_port" {
  value = aws_lightsail_instance_public_ports.client[*].id
}

output "lightsail_key_pair_name" {
  value = one(aws_lightsail_key_pair.main[*].name)
}

output "lightsail_key_pair_pgp_key" {
  value = one(aws_lightsail_key_pair.main[*].pgp_key)
}

output "lightsail_key_pair_public_key" {
  value = one(aws_lightsail_key_pair.main[*].public_key)
}

output "lightsail_key_pair_id" {
  value = one(aws_lightsail_key_pair.main[*].id)
}

output "lightsail_key_pair_arn" {
  value = one(aws_lightsail_key_pair.main[*].arn)
}

output "lightsail_key_pair_fingerprint" {
  value = one(aws_lightsail_key_pair.main[*].fingerprint)
}

output "lightsail_key_pair_private_key" {
  value = one(aws_lightsail_key_pair.main[*].private_key)
}

output "lightsail_key_pair_encrypted_private_key" {
  value = one(aws_lightsail_key_pair.main[*].encrypted_private_key)
}

output "lightsail_key_pair_encrypted_fingerprint" {
  value = one(aws_lightsail_key_pair.main[*].encrypted_fingerprint)
}

output "lightsail_server_static_ip_name" {
  value = aws_lightsail_static_ip.server[*].name
}

output "lightsail_server_static_ip_arn" {
  value = aws_lightsail_static_ip.server[*].arn
}

output "lightsail_server_static_ip_ip_address" {
  value = aws_lightsail_static_ip.server[*].ip_address
}

output "lightsail_server_static_ip_support_code" {
  value = aws_lightsail_static_ip.server[*].support_code
}

output "lightsail_client_static_ip_name" {
  value = aws_lightsail_static_ip.client[*].name
}

output "lightsail_client_static_ip_arn" {
  value = aws_lightsail_static_ip.client[*].arn
}

output "lightsail_client_static_ip_ip_address" {
  value = aws_lightsail_static_ip.client[*].ip_address
}

output "lightsail_client_static_ip_support_code" {
  value = aws_lightsail_static_ip.client[*].support_code
}

output "lightsail_server_static_ip_attachment_static_ip_name" {
  value = aws_lightsail_static_ip_attachment.server[*].static_ip_name
}

output "lightsail_server_static_ip_attachment_instance_name" {
  value = aws_lightsail_static_ip_attachment.server[*].instance_name
}

output "lightsail_server_static_ip_attachment_ip_address" {
  value = aws_lightsail_static_ip_attachment.server[*].ip_address
}

output "lightsail_client_static_ip_attachment_static_ip_name" {
  value = aws_lightsail_static_ip_attachment.client[*].static_ip_name
}

output "lightsail_client_static_ip_attachment_instance_name" {
  value = aws_lightsail_static_ip_attachment.client[*].instance_name
}

output "lightsail_client_static_ip_attachment_ip_address" {
  value = aws_lightsail_static_ip_attachment.client[*].ip_address
}