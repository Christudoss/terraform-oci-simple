output "vmusingTFpublicIP" {
    value = [data.oci_core_vnic.vmusingTF_VNIC1.public_ip_address]
}