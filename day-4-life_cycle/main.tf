resource "aws_instance" "test" {
  ami = "ami-07b69f62c1d38b012"
  instance_type="t2.micro"
  key_name="mumbai"
  availability_zone="ap-south-1b"
  tags = {
    Name="test"
  }




  # lifecycle {
  #   create_before_destroy = true
  # }
#   lifecycle {
#     prevent_destroy = true
#   }
#   lifecycle {
#     ignore_changes = [ tags ]
#   }
}




