variable "oci_region" {
  default = "ap-hyderabad-1"
}

variable "vcn_cidr_block" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  default = "10.0.0.0/24"
}

variable "compartment_id" {}

variable "ssh_public_key1" {}

variable "ADs" {}

variable "Images" {
    type = map 
    default = {
        ap-hyderabad-1 = "ocid1.image.oc1.ap-hyderabad-1.aaaaaaaav7gmok247t2jngmtyahgcktphcj5gin7bpyc2fjg3bzho47ws7ea"
        ap-mumbai-1 = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaazw753qijtnuynq6wrd3rmiayquc3kpijc7j5akprmvyzhcdhxsxq"

    }

}

variable "shapes" {}


