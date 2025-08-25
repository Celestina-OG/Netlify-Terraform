terraform {
 
  required_providers {
    netlify = {
      source = "netlify/netlify"
      version = "0.2.3"
    }

    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
  # cloud {
  #   organization = "org"

  #   workspaces {
  #     name = "netlify-site"
  #   }
  # }
}

provider "netlify" {
   token = file("token")
}
