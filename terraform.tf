terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">= 1.14.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

#
# Kubernetes provider setup
#
provider "kubernetes" {
  config_path = var.kube_config
}
provider "kubectl" {
  config_path = var.kube_config
}

#
# Helm provider setup
#
provider "helm" {
  kubernetes {
    config_path = var.kube_config
  }
}

#
# Digital Ocean provider setup
#
provider "digitalocean" {
  token = var.do_token
}
