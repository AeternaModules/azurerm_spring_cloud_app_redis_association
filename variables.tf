variable "spring_cloud_app_redis_associations" {
  description = <<EOT
Map of spring_cloud_app_redis_associations, attributes below
Required:
    - name
    - redis_access_key
    - redis_cache_id
    - spring_cloud_app_id
Optional:
    - ssl_enabled
EOT

  type = map(object({
    name                = string
    redis_access_key    = string
    redis_cache_id      = string
    spring_cloud_app_id = string
    ssl_enabled         = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_app_redis_associations : (
        length(v.redis_access_key) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

