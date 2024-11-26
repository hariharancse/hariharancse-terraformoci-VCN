module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.1.0"
  # insert the 5 required variables here


# Source from https://registry.terraform.io/modules/oracle-terraform-modules/vcn/oci/


  # Required Inputs
  compartment_id = "<Compartmetn OCID>"
  region = "ap-mumbai-1"

  internet_gateway_route_rules = null
  local_peering_gateways = null
  nat_gateway_route_rules = null

  # Optional Inputs
  vcn_name = "vcn-terraform"
  vcn_dns_label = "vcnmodule"
  vcn_cidrs = ["30.0.0.0/16"]

  create_internet_gateway = true
  create_nat_gateway = true
  create_service_gateway = true
}
