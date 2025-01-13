
# provider "aws" {
  
# }

# resource "aws_instance" "import-ec2" {  
# ami ="ami-07b69f62c1d38b012"
# instance_type ="t2.micro"
# tags={
#     Name= "import"
#  }
# }


resource "aws_s3_bucket" "import" {
  bucket = "elasticbeanstalk-ap-south-1-891612575223statefilebuc"
}