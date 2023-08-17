# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

locals {
  folder_names = [for param in var.folder_params :
    (param.environment != "") ? format("fldr-%s-%s", param.environment, param.description) : format("fldr-%s", param.description)
  ]
}

module "folder" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 3.0"
  parent  = var.parent
  names   = local.folder_names
}