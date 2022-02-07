# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance
resource "aws_lightsail_instance" "server" {

  count = var.enabled ? var.serverCount : 0

  name              = lower(format("lsi-server-%s-${sum([count.index, 1])}", var.naming))
  availability_zone = var.availabilityZone
  tags              = var.tags

  blueprint_id  = var.serverBlueprintID
  bundle_id     = var.serverBundleID
  key_pair_name = var.serverKeyPairName
  user_data     = var.serverUserData

}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance
resource "aws_lightsail_instance" "client" {

  count = var.enabled ? var.clientCount : 0

  name              = lower(format("lsi-client-%s-${sum([count.index, 1])}", var.naming))
  availability_zone = var.availabilityZone
  tags              = var.tags

  blueprint_id  = var.clientBlueprintID == null ? var.serverBlueprintID : var.clientBlueprintID
  bundle_id     = var.clientBundleID == null ? var.serverBundleID : var.clientBundleID
  key_pair_name = var.clientKeyPairName == null ? var.serverKeyPairName : var.clientKeyPairName
  user_data     = var.clientUserData == null ? var.serverUserData : var.clientUserData

}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_key_pair
resource "aws_lightsail_key_pair" "main" {

  count = var.enabled && local.keyPairEnabled ? 1 : 0

  name = lower(format("lkp-%s", var.naming))

  pgp_key    = var.keyPairPGPKey
  public_key = var.keyPairPublicKey

}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance_public_ports
resource "aws_lightsail_instance_public_ports" "server" {

  count = var.enabled ? var.serverCount : 0

  instance_name = aws_lightsail_instance.server[count.index].name

  dynamic "port_info" {

    for_each = var.serverPublicPorts

    content {
      protocol  = port_info.value["protocol"]
      from_port = port_info.value["from_port"]
      to_port   = port_info.value["to_port"]
    }
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_instance_public_ports
resource "aws_lightsail_instance_public_ports" "client" {

  count = var.enabled ? var.clientCount : 0

  instance_name = aws_lightsail_instance.client[count.index].name

  dynamic "port_info" {

    for_each = var.clientPublicPorts == null ? var.serverPublicPorts : var.clientPublicPorts

    content {
      protocol  = port_info.value["protocol"]
      from_port = port_info.value["from_port"]
      to_port   = port_info.value["to_port"]
    }
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_static_ip
resource "aws_lightsail_static_ip" "server" {

  count = var.enabled ? var.serverCount : 0

  name = lower(format("lss-server-%s-${sum([count.index, 1])}", var.naming))

}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_static_ip_attachment
resource "aws_lightsail_static_ip_attachment" "server" {

  count = var.enabled ? var.serverCount : 0

  static_ip_name = aws_lightsail_static_ip.server[count.index].id
  instance_name  = aws_lightsail_instance.server[count.index].id

}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_static_ip
resource "aws_lightsail_static_ip" "client" {

  count = var.enabled ? var.clientCount : 0

  name = lower(format("lss-client-%s-${sum([count.index, 1])}", var.naming))

}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lightsail_static_ip_attachment
resource "aws_lightsail_static_ip_attachment" "client" {

  count = var.enabled ? var.clientCount : 0

  static_ip_name = aws_lightsail_static_ip.client[count.index].id
  instance_name  = aws_lightsail_instance.client[count.index].id

}