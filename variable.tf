# # Copyright 2021 Google LLC. This software is provided as-is, without warranty or representation for any use or purpose. Your use of it is subject to your agreement with Google.

variable "org_id" {
  type        = string
  description = "GCP organization ID"

}

variable "billing_account" {
  type        = string
  description = "GCP Billing Account"
}

# variable "folder_id" {
#   type        = string
#   description = "GCP folder id"
# }

// Folder variables
variable "root_level_folder_triange" {
  type = list(object({
    environment = string
    description = string
  }))
}


variable "dev_folder_name" {
  type = list(object({
    environment = string
    description = string
  }))
}

variable "prod_folder_name" {
  type = list(object({
    environment = string
    description = string
  }))
}

variable "stage_folder_name" {
  type = list(object({
    environment = string
    description = string
  }))
}

variable "common_folder_name" {
  type = list(object({
    environment = string
    description = string
  }))
}



# variable "dev_folder_name" {
#   type        = string
#   description = "GCP folder dev"
# }

// project variables

variable "dev-project" {
  type = object({
    environment = string
    description = string
  })
}

variable "prod-project" {
  type = object({
    environment = string
    description = string
  })
}
variable "stage-project" {
  type = object({
    environment = string
    description = string
  })
}

variable "common-project" {
  type = object({
    environment = string
    description = string
  })
}

variable "common-project-a" {
  type = object({
    environment = string
    description = string
  })
}

variable "common-project-b" {
  type = object({
    environment = string
    description = string
  })
}

variable "common-project-c" {
  type = object({
    environment = string
    description = string
  })
}





