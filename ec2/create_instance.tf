provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}


resource "aws_instance" "ec2" {
  ami = "ami-02bfbc2cb28b77b8"
  instance_type = "t2.nano"

}
