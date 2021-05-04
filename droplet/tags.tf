# Create a new tags
resource "digitalocean_tag" "env" {
  name = var.env_tag
}
resource "digitalocean_tag" "team" {
  name = var.team_tag
}