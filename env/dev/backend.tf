terraform {
  backend "s3" {
    bucket = "sctp-ce6-tfstate"
    key    = "aldindc-static-web-dev.tfstate"
    region = "ap-southeast-1"
  }
}