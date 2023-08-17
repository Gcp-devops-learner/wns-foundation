# Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

variable "folder_params" {
  description = "list of folder parameters"
  type = list(object({
    environment = string
    description = string
  }))
}

variable "parent" {
  description = "parent"
  type        = string
}