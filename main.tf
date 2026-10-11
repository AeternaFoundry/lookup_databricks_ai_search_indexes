data "databricks_ai_search_indexes" "ai_search_indexes_lookup" {
  for_each = var.ai_search_indexes_lookup

  parent          = each.value.parent
  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

