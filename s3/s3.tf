resource "random_id" "server" {
  byte_length = 4
}

resource "aws_s3_bucket" "mys3" {
  bucket = "${var.bucketname}-${random_id.server.hex}"
  tags = {
    Name = "${var.bucketname}-${random_id.server.hex}"
 }
}
