module "kubernetes_cluster" {
  source = "./modules/mks/cluster"

  cluster_name                      = var.cluster_name
  project_id                        = var.project_id
  region                            = var.region
  kube_version                      = var.kube_version
  enable_autorepair                 = var.enable_autorepair
  enable_patch_version_auto_upgrade = var.enable_patch_version_auto_upgrade
  network_id                        = openstack_networking_network_v2.network_tf.id
  subnet_id                         = openstack_networking_subnet_v2.subnet_tf.id
  maintenance_window_start          = var.maintenance_window_start
}

module "kubernetes_nodegroup" {
  source = "./modules/mks/nodegroup"

  cluster_id        = module.kubernetes_cluster.cluster_id
  project_id        = module.kubernetes_cluster.project_id
  region            = module.kubernetes_cluster.region
  availability_zone = var.availability_zone
  nodes_count       = var.nodes_count
  keypair_name      = var.keypair_name
  affinity_policy   = var.affinity_policy
  cpus              = var.cpus
  ram_mb            = var.ram_mb
  volume_gb         = var.volume_gb
  volume_type       = var.volume_type
}
