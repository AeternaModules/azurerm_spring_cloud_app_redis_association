output "spring_cloud_app_redis_associations_id" {
  description = "Map of id values across all spring_cloud_app_redis_associations, keyed the same as var.spring_cloud_app_redis_associations"
  value       = { for k, v in azurerm_spring_cloud_app_redis_association.spring_cloud_app_redis_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "spring_cloud_app_redis_associations_name" {
  description = "Map of name values across all spring_cloud_app_redis_associations, keyed the same as var.spring_cloud_app_redis_associations"
  value       = { for k, v in azurerm_spring_cloud_app_redis_association.spring_cloud_app_redis_associations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "spring_cloud_app_redis_associations_redis_access_key" {
  description = "Map of redis_access_key values across all spring_cloud_app_redis_associations, keyed the same as var.spring_cloud_app_redis_associations"
  value       = { for k, v in azurerm_spring_cloud_app_redis_association.spring_cloud_app_redis_associations : k => v.redis_access_key if v.redis_access_key != null && length(v.redis_access_key) > 0 }
}
output "spring_cloud_app_redis_associations_redis_cache_id" {
  description = "Map of redis_cache_id values across all spring_cloud_app_redis_associations, keyed the same as var.spring_cloud_app_redis_associations"
  value       = { for k, v in azurerm_spring_cloud_app_redis_association.spring_cloud_app_redis_associations : k => v.redis_cache_id if v.redis_cache_id != null && length(v.redis_cache_id) > 0 }
}
output "spring_cloud_app_redis_associations_spring_cloud_app_id" {
  description = "Map of spring_cloud_app_id values across all spring_cloud_app_redis_associations, keyed the same as var.spring_cloud_app_redis_associations"
  value       = { for k, v in azurerm_spring_cloud_app_redis_association.spring_cloud_app_redis_associations : k => v.spring_cloud_app_id if v.spring_cloud_app_id != null && length(v.spring_cloud_app_id) > 0 }
}
output "spring_cloud_app_redis_associations_ssl_enabled" {
  description = "Map of ssl_enabled values across all spring_cloud_app_redis_associations, keyed the same as var.spring_cloud_app_redis_associations"
  value       = { for k, v in azurerm_spring_cloud_app_redis_association.spring_cloud_app_redis_associations : k => v.ssl_enabled if v.ssl_enabled != null }
}

