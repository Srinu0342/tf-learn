resource github_repository sandbox {
    provider    = gh
    visibility  = "private"
    name        = "tf-learn"
    description = "Terraform learning repository"
}

moved {
    from = github_repository.tf-sandbox
    to   = github_repository.sandbox
}