
module "tfplan-functions" {
    source = "https://raw.githubusercontent.com/nehrman/terraform-sentinel-common-functions/main/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "https://raw.githubusercontent.com/nehrman/terraform-sentinel-common-functions/main/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "https://raw.githubusercontent.com/nehrman/terraform-sentinel-common-functions/main/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "restrict-vm-size" {
    source = "./restrict_vm_size_azure_dev.sentinel"
    enforcement_level = "hard-mandatory"
}
