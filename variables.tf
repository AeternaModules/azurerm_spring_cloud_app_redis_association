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
  # --- Unconfirmed validation candidates, derived from azurerm_spring_cloud_app_redis_association's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.SpringCloudAppAssociationName] !ok
  # path: name
  #   source:    [from validate.SpringCloudAppAssociationName] !regexp.MustCompile(`^([a-z])([a-z\d-]{2,30})([a-z\d])$`).MatchString(v)
  # path: spring_cloud_app_id
  #   source:    [from validate.SpringCloudAppID] !ok
  # path: spring_cloud_app_id
  #   source:    [from validate.SpringCloudAppID] err != nil
  # path: redis_cache_id
  #   source:    [from redis.ValidateRediID] !ok
  # path: redis_cache_id
  #   source:    [from redis.ValidateRediID] err != nil
  # path: redis_access_key
  #   condition: length(value) > 0
  #   message:   must not be empty
}

