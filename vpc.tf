data "openstack_networking_network_v2" "external_net" {
  name = "external-network"
}

# Creating a router
resource "openstack_networking_router_v2" "router_tf" {
  name                = "router_tf"
  external_network_id = data.openstack_networking_network_v2.external_net.id
}

# Creating a network
resource "openstack_networking_network_v2" "network_tf" {
  name = "network_tf"
}

# Creating a subnet
resource "openstack_networking_subnet_v2" "subnet_tf" {
  network_id = openstack_networking_network_v2.network_tf.id
  name       = "subnet_tf"
  cidr       = var.subnet_cidr
  enable_dhcp     = false
  dns_nameservers = ["188.93.16.19", "188.93.17.19"]
}

# Connecting the router to the subnet
resource "openstack_networking_router_interface_v2" "router_interface_tf" {
  router_id = openstack_networking_router_v2.router_tf.id
  subnet_id = openstack_networking_subnet_v2.subnet_tf.id
}

# resource "openstack_networking_port_v2" "subnet_one_main_router_port" {
#   name       = "subnet_one_main_router_port"
#   network_id = openstack_networking_network_v2.network_tf.id
#
#   fixed_ip {
#     subnet_id  = openstack_networking_subnet_v2.subnet_tf.id
#     ip_address = "10.10.0.1"
#   }
# }
