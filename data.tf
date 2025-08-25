data "netlify_site" "existing_site" {
  id = var.netlify_site_id
}

data "netlify_team" "team" {
  slug = var.netlify_team_slug
}
