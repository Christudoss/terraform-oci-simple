terraform {
  required_version = ">0.11"
}

resource "oci_core_vcn" "test_vcn" {
    #Required
    compartment_id = var.compartment_id

    #Optional
    cidr_block = var.vcn_cidr_block
}
resource "oci_core_subnet" "test_subnet" {
    #Required
    cidr_block = var.subnet_cidr_block
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.test_vcn.id

}