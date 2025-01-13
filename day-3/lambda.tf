resource"aws_lambda_function" "lambda"{
    function_name = "test"
    runtime = "python3.9"
    role = "arn:aws:iam::891612575223:role/lambda_admin"
    handler = "index.lambda_handler"
    s3_bucket = aws_s3_bucket.ramdevops-1.id
    s3_key = aws_s3_object.ramdevops-1.key
    tags = {
      Name="lambda"
    }
}

# s3 bucket to store lambda code 
resource "aws_s3_bucket" "ramdevops-1" {
  bucket = "ramdevops-1"
  acl = "private"
  force_destroy = true
  tags = {
    Name="ramdevops-1"
  }
}


#upload lambda code 
resource "aws_s3_object" "ramdevops-1" {
  bucket = aws_s3_bucket.ramdevops-1.id
  key = "index.zip"
  source = "index.zip"
}