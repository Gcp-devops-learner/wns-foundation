# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

/* Root level projects */

# module "root-wns-org" {
#   source          = "./modules/project/"
#   project_params  = var.org_id
#   org_id          = var.org_id          // provide the org id here
#   billing_account = var.billing_account // provide the billing account id here
# }



/*#############################
#   Projects
*/ #############################

module "dev-project" {
  source         = "./modules/project/"
  project_params = var.dev-project
  org_id         = var.org_id                                            // provide the org id here
  folder_id      = module.first_level_folder_dev.folders_map.fldr-dev.id //(don't change asfolder_id id is static)
  //folder_id       = var.folder_id
  billing_account = var.billing_account // provide the billing account id here

}

module "prod-project" {
  source         = "./modules/project/"
  org_id         = var.org_id
  project_params = var.prod-project                                       
  folder_id      = module.first_level_folder_prod.folders_map.fldr-prod.id //(don't change asfolder_id id is static)
  //folder_id       = var.folder_id
  billing_account = var.billing_account // provide the billing account id here
}

module "stage-project" {
  source         = "./modules/project/"
  project_params = var.stage-project
  org_id         = var.org_id                                                // provide the org id here
  folder_id      = module.first_level_folder_stage.folders_map.fldr-stage.id //(don't change asfolder_id id is static)
  billing_account = var.billing_account // provide the billing account id here
}

module "common-project" {
  source         = "./modules/project/"
  project_params = var.common-project
  org_id         = var.org_id                                                  // provide the org id here
  folder_id      = module.first_level_folder_common.folders_map.fldr-common.id //(don't change asfolder_id id is static)
  //folder_id       = var.folder_id
  billing_account = var.billing_account // provide the billing account id here
}

module "common-project-a" {
  source         = "./modules/project/"
  project_params = var.common-project-a
  org_id         = var.org_id                                                  // provide the org id here
  folder_id      = module.first_level_folder_common.folders_map.fldr-common.id //(don't change asfolder_id id is static)
  billing_account = var.billing_account // provide the billing account id here

}

module "common-project-b" {
  source         = "./modules/project/"
  project_params = var.common-project-b
  org_id         = var.org_id                                                  // provide the org id here
  folder_id      = module.first_level_folder_common.folders_map.fldr-common.id //(don't change asfolder_id id is static)
  billing_account = var.billing_account // provide the billing account id here

}

module "common-project-c" {
  source         = "./modules/project/"
  project_params = var.common-project-c
  org_id         = var.org_id                                                  // provide the org id here
  folder_id      = module.first_level_folder_common.folders_map.fldr-common.id //(don't change asfolder_id id is static)
  billing_account = var.billing_account // provide the billing account id here

}

