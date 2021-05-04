# provider.tf
variable "do_token" {}

# volume.tf
variable "digitalocean_region" {
  default = "nyc3"
}
variable "digitalocean_volume_size" {
  default = "10"
}

# tags.tf
variable "env_tag" {
  default = "Development"
}
variable "team_tag" {
  default = "DevOps"
}