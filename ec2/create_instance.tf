provider "aws" {
  region     = "ap-east-3"
  access_key = ""
  secret_key = ""
}


resource "aws_instance" "ec2" {
  ami = "ami-02b5fbc2cb28b77b8"
  instance_type = "t3.nano"

}
