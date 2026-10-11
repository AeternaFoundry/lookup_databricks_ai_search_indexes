output "ai_search_indexes_lookup_indexes" {
  description = "Map of indexes values across all ai_search_indexes_lookup, keyed the same as var.ai_search_indexes_lookup except keys with no indexes are omitted"
  value       = { for k, v in data.databricks_ai_search_indexes.ai_search_indexes_lookup : k => v.indexes if v.indexes != null && length(v.indexes) > 0 }
}
output "ai_search_indexes_lookup_page_size" {
  description = "Map of page_size values across all ai_search_indexes_lookup, keyed the same as var.ai_search_indexes_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_ai_search_indexes.ai_search_indexes_lookup : k => v.page_size if v.page_size != null }
}
output "ai_search_indexes_lookup_parent" {
  description = "Map of parent values across all ai_search_indexes_lookup, keyed the same as var.ai_search_indexes_lookup except keys with no parent are omitted"
  value       = { for k, v in data.databricks_ai_search_indexes.ai_search_indexes_lookup : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "ai_search_indexes_lookup_provider_config" {
  description = "Map of provider_config values across all ai_search_indexes_lookup, keyed the same as var.ai_search_indexes_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_ai_search_indexes.ai_search_indexes_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

