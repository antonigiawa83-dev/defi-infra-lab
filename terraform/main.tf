terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region  = "ap-southeast-1"
}

# --- INI KODE BARU YANG DITAMBAHKAN ---
resource "aws_instance" "app_server" {
  ami           = "ami-0b93ce03dcbcb99ea" # ID mesin Ubuntu
  instance_type = "t2.micro"              # Ukuran mesin (Kecil)

  tags = {
    Name = "Paradex-Node"
  }
}
