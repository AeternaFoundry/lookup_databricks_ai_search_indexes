variable "ai_search_indexes_lookup" {
  description = <<EOT
Map of ai_search_indexes_lookup, attributes below
Required:
    - parent
Optional:
    - page_size
    - provider_config
EOT

  type = map(object({
    parent    = string
    page_size = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

