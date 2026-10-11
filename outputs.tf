output "config_maps_id" {
  description = "Map of id values across all config_maps, keyed the same as var.config_maps except keys with no id are omitted"
  value       = { for k, v in kubernetes_config_map.config_maps : k => v.id if v.id != null && length(v.id) > 0 }
}
output "config_maps_binary_data" {
  description = "Map of binary_data values across all config_maps, keyed the same as var.config_maps except keys with no binary_data are omitted"
  value       = { for k, v in kubernetes_config_map.config_maps : k => v.binary_data if v.binary_data != null && length(v.binary_data) > 0 }
}
output "config_maps_data" {
  description = "Map of data values across all config_maps, keyed the same as var.config_maps except keys with no data are omitted"
  value       = { for k, v in kubernetes_config_map.config_maps : k => v.data if v.data != null && length(v.data) > 0 }
}
output "config_maps_immutable" {
  description = "Map of immutable values across all config_maps, keyed the same as var.config_maps except keys with no immutable are omitted"
  value       = { for k, v in kubernetes_config_map.config_maps : k => v.immutable if v.immutable != null }
}
output "config_maps_metadata" {
  description = "Map of metadata values across all config_maps, keyed the same as var.config_maps except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_config_map.config_maps : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}

