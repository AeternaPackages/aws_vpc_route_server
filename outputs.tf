# --- aws_vpc_route_server ---
output "vpc_route_servers_id" {
  description = "Map of id values across all vpc_route_servers, keyed the same as var.vpc_route_servers"
  value       = module.vpc_route_servers.vpc_route_servers_id
}

output "vpc_route_servers_amazon_side_asn" {
  description = "Map of amazon_side_asn values across all vpc_route_servers, keyed the same as var.vpc_route_servers"
  value       = module.vpc_route_servers.vpc_route_servers_amazon_side_asn
}

output "vpc_route_servers_arn" {
  description = "Map of arn values across all vpc_route_servers, keyed the same as var.vpc_route_servers"
  value       = module.vpc_route_servers.vpc_route_servers_arn
}

output "vpc_route_servers_persist_routes" {
  description = "Map of persist_routes values across all vpc_route_servers, keyed the same as var.vpc_route_servers"
  value       = module.vpc_route_servers.vpc_route_servers_persist_routes
}

output "vpc_route_servers_persist_routes_duration" {
  description = "Map of persist_routes_duration values across all vpc_route_servers, keyed the same as var.vpc_route_servers"
  value       = module.vpc_route_servers.vpc_route_servers_persist_routes_duration
}

output "vpc_route_servers_region" {
  description = "Map of region values across all vpc_route_servers, keyed the same as var.vpc_route_servers"
  value       = module.vpc_route_servers.vpc_route_servers_region
}

output "vpc_route_servers_route_server_id" {
  description = "Map of route_server_id values across all vpc_route_servers, keyed the same as var.vpc_route_servers"
  value       = module.vpc_route_servers.vpc_route_servers_route_server_id
}

output "vpc_route_servers_sns_notifications_enabled" {
  description = "Map of sns_notifications_enabled values across all vpc_route_servers, keyed the same as var.vpc_route_servers"
  value       = module.vpc_route_servers.vpc_route_servers_sns_notifications_enabled
}

output "vpc_route_servers_sns_topic_arn" {
  description = "Map of sns_topic_arn values across all vpc_route_servers, keyed the same as var.vpc_route_servers"
  value       = module.vpc_route_servers.vpc_route_servers_sns_topic_arn
}

output "vpc_route_servers_tags" {
  description = "Map of tags values across all vpc_route_servers, keyed the same as var.vpc_route_servers"
  value       = module.vpc_route_servers.vpc_route_servers_tags
}

output "vpc_route_servers_tags_all" {
  description = "Map of tags_all values across all vpc_route_servers, keyed the same as var.vpc_route_servers"
  value       = module.vpc_route_servers.vpc_route_servers_tags_all
}

# --- aws_vpc_route_server_endpoint ---
output "vpc_route_server_endpoints_id" {
  description = "Map of id values across all vpc_route_server_endpoints, keyed the same as var.vpc_route_server_endpoints"
  value       = module.vpc_route_server_endpoints.vpc_route_server_endpoints_id
}

output "vpc_route_server_endpoints_arn" {
  description = "Map of arn values across all vpc_route_server_endpoints, keyed the same as var.vpc_route_server_endpoints"
  value       = module.vpc_route_server_endpoints.vpc_route_server_endpoints_arn
}

output "vpc_route_server_endpoints_eni_address" {
  description = "Map of eni_address values across all vpc_route_server_endpoints, keyed the same as var.vpc_route_server_endpoints"
  value       = module.vpc_route_server_endpoints.vpc_route_server_endpoints_eni_address
}

output "vpc_route_server_endpoints_eni_id" {
  description = "Map of eni_id values across all vpc_route_server_endpoints, keyed the same as var.vpc_route_server_endpoints"
  value       = module.vpc_route_server_endpoints.vpc_route_server_endpoints_eni_id
}

output "vpc_route_server_endpoints_region" {
  description = "Map of region values across all vpc_route_server_endpoints, keyed the same as var.vpc_route_server_endpoints"
  value       = module.vpc_route_server_endpoints.vpc_route_server_endpoints_region
}

output "vpc_route_server_endpoints_route_server_endpoint_id" {
  description = "Map of route_server_endpoint_id values across all vpc_route_server_endpoints, keyed the same as var.vpc_route_server_endpoints"
  value       = module.vpc_route_server_endpoints.vpc_route_server_endpoints_route_server_endpoint_id
}

output "vpc_route_server_endpoints_route_server_id" {
  description = "Map of route_server_id values across all vpc_route_server_endpoints, keyed the same as var.vpc_route_server_endpoints"
  value       = module.vpc_route_server_endpoints.vpc_route_server_endpoints_route_server_id
}

output "vpc_route_server_endpoints_subnet_id" {
  description = "Map of subnet_id values across all vpc_route_server_endpoints, keyed the same as var.vpc_route_server_endpoints"
  value       = module.vpc_route_server_endpoints.vpc_route_server_endpoints_subnet_id
}

output "vpc_route_server_endpoints_tags" {
  description = "Map of tags values across all vpc_route_server_endpoints, keyed the same as var.vpc_route_server_endpoints"
  value       = module.vpc_route_server_endpoints.vpc_route_server_endpoints_tags
}

output "vpc_route_server_endpoints_tags_all" {
  description = "Map of tags_all values across all vpc_route_server_endpoints, keyed the same as var.vpc_route_server_endpoints"
  value       = module.vpc_route_server_endpoints.vpc_route_server_endpoints_tags_all
}

output "vpc_route_server_endpoints_vpc_id" {
  description = "Map of vpc_id values across all vpc_route_server_endpoints, keyed the same as var.vpc_route_server_endpoints"
  value       = module.vpc_route_server_endpoints.vpc_route_server_endpoints_vpc_id
}

# --- aws_vpc_route_server_propagation ---
output "vpc_route_server_propagations_id" {
  description = "Map of id values across all vpc_route_server_propagations, keyed the same as var.vpc_route_server_propagations"
  value       = module.vpc_route_server_propagations.vpc_route_server_propagations_id
}

output "vpc_route_server_propagations_region" {
  description = "Map of region values across all vpc_route_server_propagations, keyed the same as var.vpc_route_server_propagations"
  value       = module.vpc_route_server_propagations.vpc_route_server_propagations_region
}

output "vpc_route_server_propagations_route_server_id" {
  description = "Map of route_server_id values across all vpc_route_server_propagations, keyed the same as var.vpc_route_server_propagations"
  value       = module.vpc_route_server_propagations.vpc_route_server_propagations_route_server_id
}

output "vpc_route_server_propagations_route_table_id" {
  description = "Map of route_table_id values across all vpc_route_server_propagations, keyed the same as var.vpc_route_server_propagations"
  value       = module.vpc_route_server_propagations.vpc_route_server_propagations_route_table_id
}

# --- aws_vpc_route_server_vpc_association ---
output "vpc_route_server_vpc_associations_id" {
  description = "Map of id values across all vpc_route_server_vpc_associations, keyed the same as var.vpc_route_server_vpc_associations"
  value       = module.vpc_route_server_vpc_associations.vpc_route_server_vpc_associations_id
}

output "vpc_route_server_vpc_associations_region" {
  description = "Map of region values across all vpc_route_server_vpc_associations, keyed the same as var.vpc_route_server_vpc_associations"
  value       = module.vpc_route_server_vpc_associations.vpc_route_server_vpc_associations_region
}

output "vpc_route_server_vpc_associations_route_server_id" {
  description = "Map of route_server_id values across all vpc_route_server_vpc_associations, keyed the same as var.vpc_route_server_vpc_associations"
  value       = module.vpc_route_server_vpc_associations.vpc_route_server_vpc_associations_route_server_id
}

output "vpc_route_server_vpc_associations_vpc_id" {
  description = "Map of vpc_id values across all vpc_route_server_vpc_associations, keyed the same as var.vpc_route_server_vpc_associations"
  value       = module.vpc_route_server_vpc_associations.vpc_route_server_vpc_associations_vpc_id
}

# --- aws_vpc_route_server_peer ---
output "vpc_route_server_peers_id" {
  description = "Map of id values across all vpc_route_server_peers, keyed the same as var.vpc_route_server_peers"
  value       = module.vpc_route_server_peers.vpc_route_server_peers_id
}

output "vpc_route_server_peers_arn" {
  description = "Map of arn values across all vpc_route_server_peers, keyed the same as var.vpc_route_server_peers"
  value       = module.vpc_route_server_peers.vpc_route_server_peers_arn
}

output "vpc_route_server_peers_bgp_options" {
  description = "Map of bgp_options values across all vpc_route_server_peers, keyed the same as var.vpc_route_server_peers"
  value       = module.vpc_route_server_peers.vpc_route_server_peers_bgp_options
}

output "vpc_route_server_peers_endpoint_eni_address" {
  description = "Map of endpoint_eni_address values across all vpc_route_server_peers, keyed the same as var.vpc_route_server_peers"
  value       = module.vpc_route_server_peers.vpc_route_server_peers_endpoint_eni_address
}

output "vpc_route_server_peers_endpoint_eni_id" {
  description = "Map of endpoint_eni_id values across all vpc_route_server_peers, keyed the same as var.vpc_route_server_peers"
  value       = module.vpc_route_server_peers.vpc_route_server_peers_endpoint_eni_id
}

output "vpc_route_server_peers_peer_address" {
  description = "Map of peer_address values across all vpc_route_server_peers, keyed the same as var.vpc_route_server_peers"
  value       = module.vpc_route_server_peers.vpc_route_server_peers_peer_address
}

output "vpc_route_server_peers_region" {
  description = "Map of region values across all vpc_route_server_peers, keyed the same as var.vpc_route_server_peers"
  value       = module.vpc_route_server_peers.vpc_route_server_peers_region
}

output "vpc_route_server_peers_route_server_endpoint_id" {
  description = "Map of route_server_endpoint_id values across all vpc_route_server_peers, keyed the same as var.vpc_route_server_peers"
  value       = module.vpc_route_server_peers.vpc_route_server_peers_route_server_endpoint_id
}

output "vpc_route_server_peers_route_server_id" {
  description = "Map of route_server_id values across all vpc_route_server_peers, keyed the same as var.vpc_route_server_peers"
  value       = module.vpc_route_server_peers.vpc_route_server_peers_route_server_id
}

output "vpc_route_server_peers_route_server_peer_id" {
  description = "Map of route_server_peer_id values across all vpc_route_server_peers, keyed the same as var.vpc_route_server_peers"
  value       = module.vpc_route_server_peers.vpc_route_server_peers_route_server_peer_id
}

output "vpc_route_server_peers_subnet_id" {
  description = "Map of subnet_id values across all vpc_route_server_peers, keyed the same as var.vpc_route_server_peers"
  value       = module.vpc_route_server_peers.vpc_route_server_peers_subnet_id
}

output "vpc_route_server_peers_tags" {
  description = "Map of tags values across all vpc_route_server_peers, keyed the same as var.vpc_route_server_peers"
  value       = module.vpc_route_server_peers.vpc_route_server_peers_tags
}

output "vpc_route_server_peers_tags_all" {
  description = "Map of tags_all values across all vpc_route_server_peers, keyed the same as var.vpc_route_server_peers"
  value       = module.vpc_route_server_peers.vpc_route_server_peers_tags_all
}

output "vpc_route_server_peers_vpc_id" {
  description = "Map of vpc_id values across all vpc_route_server_peers, keyed the same as var.vpc_route_server_peers"
  value       = module.vpc_route_server_peers.vpc_route_server_peers_vpc_id
}


