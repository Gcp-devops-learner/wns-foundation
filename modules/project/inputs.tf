# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

/*
variable "project_params" {
  description = "project parameters"
  type = object({
    environment = string
    description = string
    business_code_number = string
    unique_id = string
  })
}
*/
variable "project_params" {
  description = "project parameters"
  type = object({
    environment = string
    description = string
  })
}

variable "org_id" {
  description = "organization id"
  type        = string
}

variable "folder_id" {
  description = "folder id"
  type        = string
}

variable "billing_account" {
  description = "billing account"
  type        = string
}

