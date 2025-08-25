resource "random_string" "build_id" {
  length  = 6
  special = false
  upper   = false
}


resource "random_pet" "pet" {
  keepers = {
    redeploy = timestamp()  # Generates a new ID every apply
  }
}