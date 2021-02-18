
#export AWS_ACCESS_KEY_ID="access_key_here"
#export AWS_SECRET_ACCESS_KEY="secret_key_here"


provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-1"
}


resource "aws_instance" "demo" {
  ami           = "ami-c80b0aa2"
  instance_type = "t2.micro"
}


