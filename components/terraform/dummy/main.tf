variable "seed" {
  type = string
}

resource "random_id" "foo" {
  keepers = {
    # Generate a new id each time we switch to a new seed
    seed = "${var.seed}1"
  }

  byte_length = 8
}
