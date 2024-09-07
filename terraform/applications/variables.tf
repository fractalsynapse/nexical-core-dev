#
# System variables
#
variable "domain" {
  description = "Platform domain"
  type        = string
}
variable "environment" {
  description = "Platform environment"
  type        = string
  default     = "local"
}

#
# Filesystem variables
#
variable "project_path" { # CI/CD project directory
  description = "Base project path"
  type        = string
}
variable "kube_config" {
  description = "Kubernetes cluster credential file"
  type        = string
}

#
# Networking variables
#
variable "gateway_node_port" {
  description = "Kubernetes Gateway Ingress Node port"
  type        = number
  default     = 32210
}

variable "ssl_certificate" {
  description = "The certificate for the origin server SSL termination"
  type        = string
}
variable "ssl_private_key" {
  description = "The certificate private key for the origin server SSL termination"
  type        = string
}

#
# ArgoCD variables
#
variable "argocd_admin_password" {
  description = "ArgoCD administrator password (bcrypt hash)"
  type        = string
}

#
# Repository Management variables
#
variable "github_org" {
  description = "GitHub organization"
  type        = string
}
# variable "github_deployer_token" {
#   description = "GitHub organization deployer account token (can access repositories and create deploy keys)"
#   type        = string
# }

#
# Mailgun variables
#
variable "mailgun_domain" {
  description = "Mailgun Domain"
  type        = string
}
variable "mailgun_api_key" {
  description = "Mailgun API key"
  type        = string
}
variable "mailgun_webhook_key" {
  description = "Mailgun Webhook key"
  type        = string
}

variable "from_email" {
  description = "Default From Email"
  type        = string
  default     = "Nexical AI <noreply@nexical.email>"
}
variable "contact_email" {
  description = "Contact email that receives notifications"
  type        = string
  default     = "hello@fractalsynapse.com"
}

#
# AI service variables
#
variable "huggingface_api_token" {
  description = "Huggingface API token"
  type        = string
}
variable "deepinfra_api_key" {
  description = "DeepInfra API key"
  type        = string
}

#
# Zimagi variables
#
variable "zimagi_tag" {
  description = "Zimagi Container Image Tag"
  type        = string
  default     = "dev"
}
variable "zimagi_os_password" {
  description = "Zimagi OS user password"
  type        = string
}

variable "zimagi_admin_api_key" {
  description = "Zimagi API Administrator Encryption Key"
  type        = string
}

variable "zimagi_email_host_user" {
  description = "Zimagi Email Host User"
  type        = string
}
variable "zimagi_email_host_password" {
  description = "Zimagi Email Host Password"
  type        = string
}

#
# Interface platform variables
#
variable "interface_api_key" {
  description = "Interface API key"
  type        = string
}
