
variable "user_name" {}
variable "user_password" {}
variable "sel_token" {}
variable "os_auth_url" {}
variable "target_zone" {}

variable "project_name" {
  default = "tf-project"
}

variable "project_id" {}

variable "cluster_name" {
  default = "tf-cluster"
}

variable "region" {
  default = "ru-1"
}

variable "kube_version" {
  default = "1.22.4"
}

variable "enable_autorepair" {
  default = true
}

variable "enable_patch_version_auto_upgrade" {
  default = true
}

variable "network_id" {
  default = ""
}

variable "subnet_id" {
  default = ""
}

variable "maintenance_window_start" {
  #?
  default = "00:00:00"
}

variable "availability_zone" {
  default = "ru-1a"
}

variable "nodes_count" {
  default = 3
}

variable "keypair_name" {
  default = ""
}

variable "affinity_policy" {
  default = ""
}

variable "cpus" {
  default = 2
}

variable "ram_mb" {
  default = 2048
}

variable "volume_gb" {
  default = 20
}

variable "volume_type" {
  default = "fast.ru-1a"
}

variable "subnet_cidr" {
  default = "10.10.0.0/24"
}
