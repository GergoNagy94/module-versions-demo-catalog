include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::git@github.com:terraform-aws-modules/terraform-aws-security-group?ref=v5.3.0"
}

inputs = {
  name        = values.name
  description = values.description
  vpc_id      = values.vpc_id

  ingress_with_cidr_blocks = try(values.ingress_with_cidr_blocks, [])

  egress_with_cidr_blocks = try(values.egress_with_cidr_blocks, [])

  tags = try(values.tags, {})
}