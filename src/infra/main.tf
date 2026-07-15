terraform { 
    required_version = ">= 1.0"
}

provider "local" {}

resource "local_file" "debian_linux" { 
    content = "Hello terraform"
    filename = "${path.module}/hello.txt"
}


