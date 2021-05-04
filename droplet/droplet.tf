# Deploy droplet 

# Bootstrap script 
data "template_file" "init" {
  template = file("scripts/bootstrap.yaml")
}

resource "digitalocean_droplet" "exampledroplet" {
  image      = "ubuntu-18-04-x64"
  name       = "exampledroplet"
  region     = var.digitalocean_region
  size       = "s-1vcpu-1gb"
  volume_ids = [digitalocean_volume.examplevolume.id]
  ssh_keys   = [digitalocean_ssh_key.examplekey.fingerprint]
  user_data  = data.template_file.init.rendered
  tags = [
    digitalocean_tag.env.id,
    digitalocean_tag.team.id
  ]
}