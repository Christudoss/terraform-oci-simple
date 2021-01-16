module "networking" {
  source = "../modules/networking"
  vcn_cidr_block = var.vcn_cidr_block
  subnet_cidr_block = var.subnet_cidr_block
  compartment_id = var.compartment_id
  
}

module "compute" {
    source = "../modules/compute"
    ADs = var.ADs
    compartment_id = var.compartment_id
    shapes = var.shapes
    Images = var.Images[var.oci_region]
    ssh_public_key = var.ssh_public_key1
    subnet_id = module.networking.subnet



    
}