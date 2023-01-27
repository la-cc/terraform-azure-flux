terraform {
  required_version = ">= 1.1.6"

  required_providers {


    flux = {
      source  = "fluxcd/flux"
      version = "0.22.3"
    }

    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.14.0"
    }

  }
}

