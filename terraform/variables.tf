/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "billing_account_id" {
  default = ""
}

variable "organization_id" {
  default = "" 
}

variable "service_project_parent_folder_id" {
  default = ""
}

variable "service_project_id" {
  description = "The ID of the service project which hosts the project resources e.g. dev-55427"
}

variable "dns_project_id" {
  description = "The project ID with the Cloud DNS zone"
}

variable "service_project_apis_to_enable" {
  type = list(string)
  default = [
    "appengine.googleapis.com",
    "iap.googleapis.com",
  ]
}

variable "shared_vpc_host_project_id" {
  description = "The ID of the host project which hosts the shared VPC e.g. shared-vpc-host-project-55427"
}

variable "shared_vpc_network" {
  description = "The ID of the shared VPC e.g. shared-network"
}


variable "dns_name" {
}

variable "dns_zone" {
}

variable "app_engine_location" {
  default = "us-central"
}

variable "app_engine_iap_domain" {
}