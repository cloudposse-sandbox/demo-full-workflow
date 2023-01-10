variable "seed" {
  type = string
}

resource "random_id" "server" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    seed = var.seed
  }

  byte_length = 8
}
