terraform {
  # 1. Stay modern (matching 2026 standards)
  required_version = ">= 1.10.0"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # 2. Use the latest major version (4.x)
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  # 3. Explicitly target your subscription to prevent "Identity Confusion"
  subscription_id = "bcd4fe40-938d-48e2-bea9-6425a552c4ab"
  features {
  }
}