output "ec2_client_vpn_endpoints_id" {
  description = "Map of id values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ec2_client_vpn_endpoints_arn" {
  description = "Map of arn values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ec2_client_vpn_endpoints_authentication_options" {
  description = "Map of authentication_options values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.authentication_options if v.authentication_options != null && length(v.authentication_options) > 0 }
}
output "ec2_client_vpn_endpoints_client_cidr_block" {
  description = "Map of client_cidr_block values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.client_cidr_block if v.client_cidr_block != null && length(v.client_cidr_block) > 0 }
}
output "ec2_client_vpn_endpoints_client_connect_options" {
  description = "Map of client_connect_options values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => one(v.client_connect_options) if v.client_connect_options != null && length(v.client_connect_options) > 0 }
}
output "ec2_client_vpn_endpoints_client_login_banner_options" {
  description = "Map of client_login_banner_options values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => one(v.client_login_banner_options) if v.client_login_banner_options != null && length(v.client_login_banner_options) > 0 }
}
output "ec2_client_vpn_endpoints_client_route_enforcement_options" {
  description = "Map of client_route_enforcement_options values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => one(v.client_route_enforcement_options) if v.client_route_enforcement_options != null && length(v.client_route_enforcement_options) > 0 }
}
output "ec2_client_vpn_endpoints_connection_log_options" {
  description = "Map of connection_log_options values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => one(v.connection_log_options) if v.connection_log_options != null && length(v.connection_log_options) > 0 }
}
output "ec2_client_vpn_endpoints_description" {
  description = "Map of description values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.description if v.description != null && length(v.description) > 0 }
}
output "ec2_client_vpn_endpoints_disconnect_on_session_timeout" {
  description = "Map of disconnect_on_session_timeout values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.disconnect_on_session_timeout if v.disconnect_on_session_timeout != null }
}
output "ec2_client_vpn_endpoints_dns_name" {
  description = "Map of dns_name values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.dns_name if v.dns_name != null && length(v.dns_name) > 0 }
}
output "ec2_client_vpn_endpoints_dns_servers" {
  description = "Map of dns_servers values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.dns_servers if v.dns_servers != null && length(v.dns_servers) > 0 }
}
output "ec2_client_vpn_endpoints_endpoint_ip_address_type" {
  description = "Map of endpoint_ip_address_type values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.endpoint_ip_address_type if v.endpoint_ip_address_type != null && length(v.endpoint_ip_address_type) > 0 }
}
output "ec2_client_vpn_endpoints_region" {
  description = "Map of region values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ec2_client_vpn_endpoints_security_group_ids" {
  description = "Map of security_group_ids values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.security_group_ids if v.security_group_ids != null && length(v.security_group_ids) > 0 }
}
output "ec2_client_vpn_endpoints_self_service_portal" {
  description = "Map of self_service_portal values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.self_service_portal if v.self_service_portal != null && length(v.self_service_portal) > 0 }
}
output "ec2_client_vpn_endpoints_self_service_portal_url" {
  description = "Map of self_service_portal_url values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.self_service_portal_url if v.self_service_portal_url != null && length(v.self_service_portal_url) > 0 }
}
output "ec2_client_vpn_endpoints_server_certificate_arn" {
  description = "Map of server_certificate_arn values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.server_certificate_arn if v.server_certificate_arn != null && length(v.server_certificate_arn) > 0 }
}
output "ec2_client_vpn_endpoints_session_timeout_hours" {
  description = "Map of session_timeout_hours values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.session_timeout_hours if v.session_timeout_hours != null }
}
output "ec2_client_vpn_endpoints_split_tunnel" {
  description = "Map of split_tunnel values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.split_tunnel if v.split_tunnel != null }
}
output "ec2_client_vpn_endpoints_tags" {
  description = "Map of tags values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ec2_client_vpn_endpoints_tags_all" {
  description = "Map of tags_all values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "ec2_client_vpn_endpoints_traffic_ip_address_type" {
  description = "Map of traffic_ip_address_type values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.traffic_ip_address_type if v.traffic_ip_address_type != null && length(v.traffic_ip_address_type) > 0 }
}
output "ec2_client_vpn_endpoints_transit_gateway_configuration" {
  description = "Map of transit_gateway_configuration values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => one(v.transit_gateway_configuration) if v.transit_gateway_configuration != null && length(v.transit_gateway_configuration) > 0 }
}
output "ec2_client_vpn_endpoints_transport_protocol" {
  description = "Map of transport_protocol values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.transport_protocol if v.transport_protocol != null && length(v.transport_protocol) > 0 }
}
output "ec2_client_vpn_endpoints_vpc_id" {
  description = "Map of vpc_id values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.vpc_id if v.vpc_id != null && length(v.vpc_id) > 0 }
}
output "ec2_client_vpn_endpoints_vpn_port" {
  description = "Map of vpn_port values across all ec2_client_vpn_endpoints, keyed the same as var.ec2_client_vpn_endpoints"
  value       = { for k, v in aws_ec2_client_vpn_endpoint.ec2_client_vpn_endpoints : k => v.vpn_port if v.vpn_port != null }
}

