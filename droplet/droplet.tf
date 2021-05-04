resource "digitalocean_droplet" "exampledroplet" {
  image      = "ubuntu-18-04-x64"
  name       = "exampledroplet"
  region     = var.digitalocean_region
  size       = "s-1vcpu-1gb"
  volume_ids = [digitalocean_volume.examplevolume.id]
  ssh_keys   = [digitalocean_ssh_key.examplekey.fingerprint]
  user_data  = <<EOF
                #cloud-config
                package_upgrade: true
                runcmd:
                - pwd >> /tmp/check
                - whoami >> /tmp/check
                EOF
  tags = [
    digitalocean_tag.env.id
  ]
}