terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "${var.token}"
  owner = "${var.owner_name}"
}


resource "github_repository" "robertorepository" {
  name        = "${var.repositoty_name}"
  description = "My awesome codebase"
  visibility = "public"
}
