terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
    }
  }

  backend "local" {
    path = "./terraform.tfstate"
  }
}

resource "local_file" "hello" {
  content  = "def hello():\n    print('${var.hello_message}')\nhello()"
  filename = "${path.module}/hello.py"
}
