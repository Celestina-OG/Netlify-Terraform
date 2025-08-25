output "blog_build_configuration" {
  description = "Blog build configuration details"
  value = {
    functions_directory    = netlify_site_build_settings.blog.functions_directory
    last_updated          = netlify_site_build_settings.blog.last_updated
  }
}

output "site_url" {
  value = "https://${data.netlify_site.existing_site.name}.netlify.app"
}
