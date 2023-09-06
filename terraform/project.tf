data "google_project" "host_project" {
  project_id = var.shared_vpc_host_project_id
}

data "google_compute_network" "shared_vpc" {
  name    =  var.shared_vpc_network
  project = data.google_project.host_project.project_id
}

data "google_project" "dns_project" {
  project_id = var.dns_project_id
}

resource "random_id" "random_suffix" {
  byte_length = 2
}

resource "google_project_service" "certificatemanager_project_api" {
  project                    = module.service_project.project_id
  service                    = "certificatemanager.googleapis.com"
  disable_on_destroy         = false
  disable_dependent_services = false
}

module "service_project" {
  source = "git@github.com:jkwong888/tf-gcp-service-project.git"

  billing_account_id          = var.billing_account_id
  shared_vpc_host_project_id  = var.shared_vpc_host_project_id
  shared_vpc_network          = var.shared_vpc_network
  project_id                  = var.billing_account_id != "" ? format("%s-%s", var.service_project_id, random_id.random_suffix.hex) : var.service_project_id

  apis_to_enable              = var.service_project_apis_to_enable

  subnets                     = []
  subnet_users                = []
}





