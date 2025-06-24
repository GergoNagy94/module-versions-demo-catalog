include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::git@github.com/GergoNagy94/module-versions-demo-catalog//modules/s3?ref=main"
}

inputs = {
  
}
