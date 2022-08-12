# Initialize Selectel provider with token.
provider "selectel" {
  token = var.sel_token
}

provider "openstack" {
  user_name           = var.user_name
  tenant_name         = var.project_name
  password            = var.user_password
  project_domain_name = regex("[[:digit:]]+$", var.sel_token)
  user_domain_name    = regex("[[:digit:]]+$", var.sel_token)
  auth_url            = var.os_auth_url
  region              = substr(var.target_zone, 0, 4)
}
