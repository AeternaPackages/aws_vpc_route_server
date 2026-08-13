locals {
  vpc_route_servers = { for k1, v1 in var.vpc_route_servers : k1 => { amazon_side_asn = v1.amazon_side_asn, persist_routes = v1.persist_routes, persist_routes_duration = v1.persist_routes_duration, region = v1.region, sns_notifications_enabled = v1.sns_notifications_enabled, tags = v1.tags } }

  vpc_route_server_endpoints = merge([
    for k1, v1 in var.vpc_route_servers : {
      for k2, v2 in coalesce(v1.vpc_route_server_endpoints, {}) :
      "${k1}/${k2}" => merge(v2, {
        route_server_id = module.vpc_route_servers.vpc_route_servers_id["${k1}"]
      })
    }
  ]...)

  vpc_route_server_propagations = merge([
    for k1, v1 in var.vpc_route_servers : {
      for k2, v2 in coalesce(v1.vpc_route_server_propagations, {}) :
      "${k1}/${k2}" => merge(v2, {
        route_server_id = module.vpc_route_servers.vpc_route_servers_id["${k1}"]
      })
    }
  ]...)

  vpc_route_server_vpc_associations = merge([
    for k1, v1 in var.vpc_route_servers : {
      for k2, v2 in coalesce(v1.vpc_route_server_vpc_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        route_server_id = module.vpc_route_servers.vpc_route_servers_id["${k1}"]
      })
    }
  ]...)

  vpc_route_server_peers = merge([
    for k1, v1 in var.vpc_route_servers : merge([
      for k2, v2 in coalesce(v1.vpc_route_server_endpoints, {}) : {
        for k3, v3 in coalesce(v2.vpc_route_server_peers, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          route_server_endpoint_id = module.vpc_route_server_endpoints.vpc_route_server_endpoints_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)
}

module "vpc_route_servers" {
  source            = "git::https://github.com/AeternaModules/aws_vpc_route_server.git?ref=v6.58.0"
  vpc_route_servers = local.vpc_route_servers
}

module "vpc_route_server_endpoints" {
  source                     = "git::https://github.com/AeternaModules/aws_vpc_route_server_endpoint.git?ref=v6.58.0"
  vpc_route_server_endpoints = local.vpc_route_server_endpoints
  depends_on                 = [module.vpc_route_servers]
}

module "vpc_route_server_propagations" {
  source                        = "git::https://github.com/AeternaModules/aws_vpc_route_server_propagation.git?ref=v6.58.0"
  vpc_route_server_propagations = local.vpc_route_server_propagations
  depends_on                    = [module.vpc_route_servers]
}

module "vpc_route_server_vpc_associations" {
  source                            = "git::https://github.com/AeternaModules/aws_vpc_route_server_vpc_association.git?ref=v6.58.0"
  vpc_route_server_vpc_associations = local.vpc_route_server_vpc_associations
  depends_on                        = [module.vpc_route_servers]
}

module "vpc_route_server_peers" {
  source                 = "git::https://github.com/AeternaModules/aws_vpc_route_server_peer.git?ref=v6.58.0"
  vpc_route_server_peers = local.vpc_route_server_peers
  depends_on             = [module.vpc_route_server_endpoints]
}

