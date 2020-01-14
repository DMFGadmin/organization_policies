resource "google_organization_policy" "disable_default_network_creation" {
  org_id     = var.organization_id
  constraint = "compute.skipDefaultNetworkCreation"

  boolean_policy {
    enforced = true
  }
}