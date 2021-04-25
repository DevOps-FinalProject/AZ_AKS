#
# Variables Configuration
#
variable "prefix" {
  description = "A prefix used for all resources in this example"
  default     = "kt"
}
variable "location" {
  description = "The Azure Region in which all resources in this example should be provisioned"
  default     = "westus"
}
variable "kubernetes_client_id" {
  description = "The Client ID for the Service Principal to use for this Managed Kubernetes Cluster"
  default     = "9df4d787-74fb-46a6-9108-5d30236a1fca"
}
variable "kubernetes_client_secret" {
  description = "The Client Secret for the Service Principal to use for this Managed Kubernetes Cluster"
  default     = "FToSCeaIU1Nf9GthJ5wBDO.eTp9K~UpWlx"
}
