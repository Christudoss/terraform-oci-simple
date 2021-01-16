resource "oci_core_instance" "vmusingTF" {
  availability_domain = var.ADs[0]
  compartment_id = var.compartment_id
  display_name = "vmusingTF"
  shape = var.shapes[0]
  subnet_id = var.subnet_id
  source_details {
      source_type = "image"
      source_id = var.Images
  }
  metadata = {
      ssh_authorized_keys = file(var.ssh_public_key)
  }
  create_vnic_details {
      subnet_id = var.subnet_id
      assign_public_ip = true
  }
}

data "oci_core_vnic_attachments" "vmusingTF_VNIC1_attach" {
    availability_domain = var.ADs[0]
    compartment_id = var.compartment_id
    instance_id = oci_core_instance.vmusingTF.id
}

data "oci_core_vnic" "vmusingTF_VNIC1" {
    vnic_id = data.oci_core_vnic_attachments.vmusingTF_VNIC1_attach.vnic_attachments.0.vnic_id
}

