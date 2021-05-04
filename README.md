# terraform_digital_ocean
Manage Digital Ocean with Terraform. 

### Resources

[droplet](droplet) - Terraform Code to Build a Droplet. 

* Resources Include: 
    * SSH Key
    * Volume
    * Tags
    * Droplet with ```ubuntu-18-04-x64``` Image

### Notes

* Add the content of ```ssh public key``` to [ssh_keys](droplet/ssh_keys/id_rsa.pub). 

* Generate a token in DigitalOcean and add the token to [terraform.tfvars](droplet/terraform.tfvars). Follow this [documentation](https://docs.digitalocean.com/reference/api/create-personal-access-token/#:~:text=To%20generate%20a%20personal%20access,the%20Generate%20New%20Token%20button.) on how to generate ```Digital Ocean Token```. 

* You can modify ```user_data``` under [scripts](droplet/scripts/bootstrap.yaml). 
Follow this [documentation](https://cloudinit.readthedocs.io/en/latest/topics/examples.html) on modifying ```user_data```.