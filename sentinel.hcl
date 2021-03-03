
module "tfplan-functions" {
    source = ""git::https://github.com/nehrman/terraform-sentinel-common-functions//tfplan-functions/tfplan-functions.sentinel""
}

module "tfstate-functions" {
    source = ""git::https://github.com/nehrman/terraform-sentinel-common-functions//tfstate-functions/tfstate-functions.sentinel""
}

module "tfconfig-functions" {
    source = "git::https://github.com/nehrman/terraform-sentinel-common-functions//tfconfig-functions/tfconfig-functions.sentinel"
}

policy "restrict-vm-size" {
    source = "./restrict-vm-size.sentinel"
    enforcement_level = "hard-mandatory"
}
