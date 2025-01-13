resource "aws_s3_bucket" "ramdevops-1" {
  bucket = "ramdevops-1"
  
  
}
resource "aws_instance" "dependent" {
  ami = "ami-07b69f62c1d38b012"
  instance_type = "t2.nano"
  key_name = "mumbai"
depends_on = [ aws_s3_bucket.ramdevops-1 ]
}

resource "aws_s3_bucket" "ramdevops-2" {
  bucket = "ramdevops-2"
  depends_on=[aws_instance.dependent]
}  