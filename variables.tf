variable "namespace" {
  type        = string
  default     = "flux-system"
  description = "The namespace where flux will be deployed. Default: flux-system"
}

variable "config_path" {
  type        = string
  default     = "~/.kube/config"
  description = "The default path to the kubeconfig. Local:~/.kube/config"
}

variable "config_context" {
  type        = string
  description = "The context in the kubeconfig file that will be used to access the right kubernetes cluster"
}

variable "tags" {
  type        = map(string)
  description = "Defines the default tags.  Some tags like owner are enforced by Azure policies."
  default = {
    TF-Managed  = "true"
    TF-Worfklow = ""
    Maintainer  = ""
  }
}
