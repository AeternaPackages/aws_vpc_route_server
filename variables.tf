variable "vpc_route_servers" {
  description = <<EOT
Map of vpc_route_servers, attributes below
Required:
    - amazon_side_asn
Optional:
    - persist_routes
    - persist_routes_duration
    - region
    - sns_notifications_enabled
    - tags
Nested vpc_route_server_endpoints (aws_vpc_route_server_endpoint):
    Required:
        - subnet_id
    Optional:
        - region
        - tags
    Nested vpc_route_server_peers (aws_vpc_route_server_peer):
        Required:
            - peer_address
        Optional:
            - region
            - tags
            - bgp_options (block)
Nested vpc_route_server_propagations (aws_vpc_route_server_propagation):
    Required:
        - route_table_id
    Optional:
        - region
Nested vpc_route_server_vpc_associations (aws_vpc_route_server_vpc_association):
    Required:
        - vpc_id
    Optional:
        - region
EOT

  type = map(object({
    amazon_side_asn           = number
    persist_routes            = optional(string)
    persist_routes_duration   = optional(number)
    region                    = optional(string)
    sns_notifications_enabled = optional(bool)
    tags                      = optional(map(string))
    vpc_route_server_endpoints = optional(map(object({
      subnet_id = string
      region    = optional(string)
      tags      = optional(map(string))
      vpc_route_server_peers = optional(map(object({
        peer_address = string
        region       = optional(string)
        tags         = optional(map(string))
        bgp_options = optional(list(object({
          peer_asn                = number
          peer_liveness_detection = optional(string)
        })))
      })))
    })))
    vpc_route_server_propagations = optional(map(object({
      route_table_id = string
      region         = optional(string)
    })))
    vpc_route_server_vpc_associations = optional(map(object({
      vpc_id = string
      region = optional(string)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.vpc_route_servers) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.vpc_route_servers : [for kk in keys(coalesce(v0.vpc_route_server_endpoints, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.vpc_route_servers : [for k1, v1 in coalesce(v0.vpc_route_server_endpoints, {}) : [for kk in keys(coalesce(v1.vpc_route_server_peers, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.vpc_route_servers : [for kk in keys(coalesce(v0.vpc_route_server_propagations, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.vpc_route_servers : [for kk in keys(coalesce(v0.vpc_route_server_vpc_associations, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
