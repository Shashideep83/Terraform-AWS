provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}


resource "aws_instance" "myec2" {
  ami = "ami-02b5fbc2cb28b77b8"
  instance_type = "t2.micro"

}
