terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.35.0"
    }
     selectel = {
      source  = "selectel/selectel"
      version = "~> 3.6.2"
   }
  }
}
