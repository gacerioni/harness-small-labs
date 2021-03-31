terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "sa-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0b9517e2052e8be7a"
  instance_type = "t2.micro"

  tags = {
    Name = "GabsTFTest"
  }
}
