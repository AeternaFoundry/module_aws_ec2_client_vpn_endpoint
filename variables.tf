variable "ec2_client_vpn_endpoints" {
  description = <<EOT
Map of ec2_client_vpn_endpoints, attributes below
Required:
    - server_certificate_arn
    - authentication_options (block):
        - active_directory_id (optional)
        - root_certificate_chain_arn (optional)
        - saml_provider_arn (optional)
        - self_service_saml_provider_arn (optional)
        - type (required)
    - connection_log_options (block):
        - cloudwatch_log_group (optional)
        - cloudwatch_log_stream (optional)
        - enabled (required)
Optional:
    - client_cidr_block
    - description
    - disconnect_on_session_timeout
    - dns_servers
    - endpoint_ip_address_type
    - region
    - security_group_ids
    - self_service_portal
    - session_timeout_hours
    - split_tunnel
    - tags
    - tags_all
    - traffic_ip_address_type
    - transport_protocol
    - vpc_id
    - vpn_port
    - client_connect_options (block):
        - enabled (optional)
        - lambda_function_arn (optional)
    - client_login_banner_options (block):
        - banner_text (optional)
        - enabled (optional)
    - client_route_enforcement_options (block):
        - enforced (optional)
    - transit_gateway_configuration (block):
        - availability_zone_ids (optional)
        - availability_zones (optional)
        - transit_gateway_id (optional)
EOT

  type = map(object({
    server_certificate_arn        = string
    transport_protocol            = optional(string)
    traffic_ip_address_type       = optional(string)
    tags_all                      = optional(map(string))
    tags                          = optional(map(string))
    split_tunnel                  = optional(bool)
    session_timeout_hours         = optional(number)
    vpc_id                        = optional(string)
    self_service_portal           = optional(string)
    region                        = optional(string)
    endpoint_ip_address_type      = optional(string)
    dns_servers                   = optional(list(string))
    disconnect_on_session_timeout = optional(bool)
    description                   = optional(string)
    client_cidr_block             = optional(string)
    security_group_ids            = optional(set(string))
    vpn_port                      = optional(number)
    authentication_options = list(object({
      active_directory_id            = optional(string)
      root_certificate_chain_arn     = optional(string)
      saml_provider_arn              = optional(string)
      self_service_saml_provider_arn = optional(string)
      type                           = string
    }))
    connection_log_options = object({
      cloudwatch_log_group  = optional(string)
      cloudwatch_log_stream = optional(string)
      enabled               = bool
    })
    client_connect_options = optional(object({
      enabled             = optional(bool)
      lambda_function_arn = optional(string)
    }))
    client_login_banner_options = optional(object({
      banner_text = optional(string)
      enabled     = optional(bool)
    }))
    client_route_enforcement_options = optional(object({
      enforced = optional(bool)
    }))
    transit_gateway_configuration = optional(object({
      availability_zone_ids = optional(set(string))
      availability_zones    = optional(set(string))
      transit_gateway_id    = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ec2_client_vpn_endpoints : (
        length(v.authentication_options) >= 1 && length(v.authentication_options) <= 2
      )
    ])
    error_message = "Each authentication_options list must contain between 1 and 2 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ec2_client_vpn_endpoints : (
        v.client_login_banner_options == null || (v.client_login_banner_options.banner_text == null || (length(v.client_login_banner_options.banner_text) >= 0 && length(v.client_login_banner_options.banner_text) <= 1400))
      )
    ])
    error_message = "must be between 0 and 1400 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.ec2_client_vpn_endpoints : (
        v.session_timeout_hours == null || (contains([8, 10, 12, 24], v.session_timeout_hours))
      )
    ])
    error_message = "must be one of: 8, 10, 12, 24"
  }
  validation {
    condition = alltrue([
      for k, v in var.ec2_client_vpn_endpoints : (
        v.vpn_port == null || (contains([443, 1194], v.vpn_port))
      )
    ])
    error_message = "must be one of: 443, 1194"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

