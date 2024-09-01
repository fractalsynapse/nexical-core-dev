module "kubernetes_apps" {
  source = "github.com/zimagi/argocd-apps?ref=2.2.4"

  domain      = var.domain
  environment = var.environment

  argocd_config_path = "./argocd"
  project_path       = "./projects"
  config_path        = "./config"

  project_sequence = [
    "system",
    "platform",
    "database",
    "management"
  ]

  variables = local.variables
}
