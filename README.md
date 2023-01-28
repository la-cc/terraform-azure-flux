# Introduction:

The module is used to deploy flux for azure kubernetes service (aks) over terraform with a default setup.

# Exmaple Use of Modul:

    module "azure_flux" {
    source = "github.com/la-cc/aks-creator-flux.git?ref=1.0.0"

    config_context  = var.config_context

    }
