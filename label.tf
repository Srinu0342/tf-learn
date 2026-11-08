variable "label_color" {
    description = "Hex color for the labels without a #"
    type        = string
    default     = "d73a4a"

    validation {
        condition     = can(regex("^([a-fA-F0-9]{6})$", var.label_color))
        error_message = "The label color must be a valid hex color code without the # symbol"
    }
}

resource "github_issue_label" "bug" {
    provider = gh
    repository = github_repository.sandbox.name
    name       = "bug"
    color      = var.label_color
}

output "label_url" {
    value = github_issue_label.bug.url
}