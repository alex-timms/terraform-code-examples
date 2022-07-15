variable "aws_region" {
  default = "eu-west-1"
}

variable "profile" {
  default = "alex-timms"
}

variable "email" {
  default = "alexander.timms@sainsburys.co.uk"
}

variable "costcentre" {
  default = "N/A"
}

variable "live" {
  default = "no"
}

variable "environment" {
  default = "personal"
}

variable "servicename" {
  default = "aws-s3"
}

variable "project" {
  default = "personal_project"
}

variable "team" {
  default = "AJT"
}

variable "repo" {
  default = "N/A"
}

variable "owner" {
  default = "Alex Timms"
}

variable "dataRetention" {
  default = "7-years"
}

variable "dataClassification" {
  default = "public"
}

variable "bucket_name" {
  default = "unnamed_bucket"
}

locals {
  tags = {
    email       = var.email
    costcentre  = var.costcentre
    live        = var.live
    environment = var.environment
    servicename = var.servicename
    project     = var.project
    team        = var.team
    repo        = var.repo
    owner       = var.owner
  }
  data_tags = {
    dataRetention      = var.dataRetention
    dataClassification = var.dataClassification
  }
}
