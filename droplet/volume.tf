# Add volume for persistent data
resource "digitalocean_volume" "examplevolume" {
  region      = var.digitalocean_region
  name        = "examplevolume1"
  size        = var.digitalocean_volume_size
  description = "Persistent data for example_droplet"
}