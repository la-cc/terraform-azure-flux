data "azurerm_client_config" "current" {
}

# Generate manifests
data "flux_install" "main" {
  target_path    = format("aks-%s", terraform.workspace)
  network_policy = false
}

# Split multi-doc YAML with
# https://registry.terraform.io/providers/gavinbunney/kubectl/latest
data "kubectl_file_documents" "apply" {
  content = data.flux_install.main.content
}