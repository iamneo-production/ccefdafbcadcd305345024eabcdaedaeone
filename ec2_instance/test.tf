terraform {
  required_providers {
      aws={
          source="hashicorp/aws"
      }
  }
}
provider "aws"{
    region="ap-south-1"
    access_key= "AKIA46FDRTYININOY4QY"
    secret_key= "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"
}
resource "aws_instance" "ec2_instance"{
    ami="ami-08abb3eeacc61972d "
    instance_type="t2.micro"
}
output "public_ip" {
    value=aws_instance.ec2_instance.public_ip
}