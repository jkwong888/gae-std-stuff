resource "google_app_engine_application" "app" {
  project     = module.service_project.project_id
  location_id = "us-central"

  iap {
    enabled = true
    oauth2_client_id = ""
    oauth2_client_secret = ""
  }
}

resource "google_iap_app_engine_service_iam_member" "member" {
  project = module.service_project.project_id
  app_id = google_app_engine_application.app.app_id
  service = "default"
  role = "roles/iap.httpsResourceAccessor"
  member = "domain:${var.app_engine_iap_domain}"
}