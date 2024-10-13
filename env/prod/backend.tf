terraform {
  backend "s3" {
    bucket = "sctp-ce6-tfstate-bucket"
    key    = "aldindc-static-web-prd.tfstate"
    region = "ap-southeast-1"
  }
}