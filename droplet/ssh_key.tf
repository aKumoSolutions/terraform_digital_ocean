# Create a new ssh key
resource "digitalocean_ssh_key" "examplekey" {
  name       = "TerraformExample"
  public_key = file("ssh_keys/id_rsa.pub")
}