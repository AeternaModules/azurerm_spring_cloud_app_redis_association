output "spring_cloud_app_redis_associations" {
  description = "All spring_cloud_app_redis_association resources"
  value       = azurerm_spring_cloud_app_redis_association.spring_cloud_app_redis_associations
}
output "spring_cloud_app_redis_associations_name" {
  description = "List of name values across all spring_cloud_app_redis_associations"
  value       = [for k, v in azurerm_spring_cloud_app_redis_association.spring_cloud_app_redis_associations : v.name]
}
output "spring_cloud_app_redis_associations_redis_access_key" {
  description = "List of redis_access_key values across all spring_cloud_app_redis_associations"
  value       = [for k, v in azurerm_spring_cloud_app_redis_association.spring_cloud_app_redis_associations : v.redis_access_key]
}
output "spring_cloud_app_redis_associations_redis_cache_id" {
  description = "List of redis_cache_id values across all spring_cloud_app_redis_associations"
  value       = [for k, v in azurerm_spring_cloud_app_redis_association.spring_cloud_app_redis_associations : v.redis_cache_id]
}
output "spring_cloud_app_redis_associations_spring_cloud_app_id" {
  description = "List of spring_cloud_app_id values across all spring_cloud_app_redis_associations"
  value       = [for k, v in azurerm_spring_cloud_app_redis_association.spring_cloud_app_redis_associations : v.spring_cloud_app_id]
}
output "spring_cloud_app_redis_associations_ssl_enabled" {
  description = "List of ssl_enabled values across all spring_cloud_app_redis_associations"
  value       = [for k, v in azurerm_spring_cloud_app_redis_association.spring_cloud_app_redis_associations : v.ssl_enabled]
}

