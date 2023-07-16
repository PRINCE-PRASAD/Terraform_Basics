terraform {
  required_version = "1.5.0"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.5.0"
    }
  }
}

# this provider and terraform version is given due to if u are working in big organisation our configuration of terraform should be same
# don't use var command here (always hardcore the version) because this one of the first block(terraform.tf) when u run the fterraform file