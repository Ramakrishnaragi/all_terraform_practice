resource "aws_instance" "test" {
  ami = "ami-07b69f62c1d38b012"
  instance_type = "t2.nano"
  key_name = "mumbai"
}


resource "aws_s3_bucket" "sample" {
  bucket = "ramdevops-1"
}