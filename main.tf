resource "kubernetes_namespace" "main" {
  metadata {
    name = var.namespace
  }

  lifecycle {
    ignore_changes = [
      metadata[0].labels,
    ]
  }
}

# Apply manifests on the cluster
resource "kubectl_manifest" "apply" {
  for_each  = { for v in local.apply : lower(join("/", compact([v.data.apiVersion, v.data.kind, lookup(v.data.metadata, "namespace", ""), v.data.metadata.name]))) => v.content }
  yaml_body = each.value

  depends_on = [
    kubernetes_namespace.main
  ]

}