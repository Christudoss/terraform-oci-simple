provider "oci" {
  region = var.oci_region
}

terraform {
    required_version = ">0.11"
    backend "http" { 
      update_method = "PUT"
      address = "https://objectstorage.ap-hyderabad-1.oraclecloud.com/p/3UqrIwEO0unF6R4P2fuRvGeE6InzPEGRf6e8i1NaMX4LkSYDzL1ZqqrUZzEK98tS/n/id5eljbmzggu/b/terraform-statefile/o/terraform.tfstate" 
    }
}

