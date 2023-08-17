# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.


module "project" {
  source            = "terraform-google-modules/project-factory/google"
  version           = "~> 10.1"
  name              = "wns-prj-${var.project_params.environment}-${var.project_params.description}"
  random_project_id = true
  org_id            = var.org_id
  folder_id         = var.folder_id
  billing_account   = var.billing_account
  create_project_sa = false
}