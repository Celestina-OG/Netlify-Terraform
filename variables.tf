
variable "build_command" {
  description = "Build command to run for the blog"
  type        = string

}

variable "publish_directory" {
  description = "Directory to publish blog from"
  type        = string
}

variable "production_branch" {
  description = "Production branch name"
  type        = string
}

variable "base_directory" {
  description = "Base directory for the build"
  type        = string
}

variable "functions_directory" {
  description = "Directory containing Netlify functions"
  type        = string
}

variable "package_directory" {
  description = "Directory containing package.json"
  type        = string
}

variable "netlify_site_id" {
  description = "ID of the existing Netlify site"
  type        = string
}

variable "netlify_team_slug" {
  description = "Slug of the Netlify team"
  type        = string
}