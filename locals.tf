locals {
  blog_env_vars = {
    NODE_ENV         = "production"
    BLOG_TITLE       = "My Awesome Blog"
    BLOG_DESCRIPTION = "A blog about technology and life"
    AUTHOR_NAME      = "Blog Author"
    SITE_URL         = "https://myblog.com"
    ANALYTICS_ID     = "GA-XXXXXXXXX"
    CMS_API_URL      = "https://api.contentful.com"
  }
}