resource null_resource "mynull" {}

module "uses-role" {
  source = "./module"
  depends_on = [ null_resource.mynull ]
}

provider "aws" {
    region = "us-west-2"
}
