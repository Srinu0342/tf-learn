terraform {
    required_providers {
        gh = {
            source  = "integrations/github"
            version = "6.0.0"
        }
    }
}

provider gh {
    owner = "Srinu0342"
    token = var.github_token
}

variable "github_token" {
    description = "GitHub token for authentication"
    type        = string
    sensitive   = true
}