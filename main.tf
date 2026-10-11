resource "kubernetes_config_map" "config_maps" {
  for_each = var.config_maps

  binary_data = each.value.binary_data
  data        = each.value.data
  immutable   = each.value.immutable

  metadata {
    annotations   = each.value.metadata.annotations
    generate_name = each.value.metadata.generate_name
    labels        = each.value.metadata.labels
    name          = each.value.metadata.name
    namespace     = each.value.metadata.namespace
  }
}

