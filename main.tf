
# 1. Blog Build Settings Configuration
resource "netlify_site_build_settings" "blog" {
  site_id = data.netlify_site.existing_site.id
  
  # Required settings
  build_command     = var.build_command
  publish_directory = var.publish_directory
  production_branch = var.production_branch
  
  # Optional directory settings
  base_directory      = var.base_directory
  functions_directory = var.functions_directory
  package_directory   = var.package_directory

  
  # Feature toggles
  deploy_previews = true
  pretty_urls     = true
  stop_builds     = false
  
}


# 3. Blog Environment Variables Configuration
resource "netlify_environment_variable" "blog" {
  for_each = local.blog_env_vars

  site_id = data.netlify_site.existing_site.id
  team_id = data.netlify_team.team.id

  key = each.key
  values = [
    {
      value   = each.value
      context = "all"
    }
  ]
}

resource "netlify_environment_variable" "build_id" {
  site_id = data.netlify_site.existing_site.id
  team_id = data.netlify_team.team.id

  key = "Blog_BUILD_ID"
  values = [
    {
      value   = random_string.build_id.result
      context = "all"
    }
  ]
}



resource "null_resource" "deploy_site" {
  depends_on = [
    netlify_site_build_settings.blog,
    netlify_environment_variable.blog
  ]

  triggers = {
    # build_id = random_string.build_id.result
    pet = random_pet.pet.id
  }

  provisioner "local-exec" {
    command = <<EOT

      echo "window.DEPLOYMENT_ID='${random_pet.pet.id}';" > site/env.js
      
      export NETLIFY_AUTH_TOKEN=$(cat token)
      netlify deploy --dir=site --prod --site=${data.netlify_site.existing_site.id}
    EOT
  }
}
