# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

module "root_level_folder_triange" {
  source        = "./modules/folder/"
  folder_params = var.root_level_folder_triange
  parent        = var.org_id /*provide the parent id here*/
}




module "first_level_folder_dev" {
  source        = "./modules/folder/"
  folder_params = var.dev_folder_name
  parent        = module.root_level_folder_triange.folders_map.fldr-gi.id

}

module "first_level_folder_prod" {
  source        = "./modules/folder/"
  folder_params = var.prod_folder_name
  parent        = module.root_level_folder_triange.folders_map.fldr-gi.id
}

module "first_level_folder_stage" {
  source        = "./modules/folder/"
  folder_params = var.stage_folder_name
  parent        = module.root_level_folder_triange.folders_map.fldr-gi.id
}

module "first_level_folder_common" {
  source = "./modules/folder/"
  // source = "terraform-google-modules/folders/google"
  folder_params = var.common_folder_name
  parent        = module.root_level_folder_triange.folders_map.fldr-gi.id

}

# module "folder_params" {
#   source = "./modules/folder/"
#   // source = "terraform-google-modules/folders/google"
#   folder_params = var.names
#   parent        = module.root_level_folder_triange.id //(don't change as parent folder_paramsis static)
# }


