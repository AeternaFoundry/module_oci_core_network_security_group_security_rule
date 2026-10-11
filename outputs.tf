output "core_network_security_group_security_rules_id" {
  description = "Map of id values across all core_network_security_group_security_rules, keyed the same as var.core_network_security_group_security_rules except keys with no id are omitted"
  value       = { for k, v in oci_core_network_security_group_security_rule.core_network_security_group_security_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_network_security_group_security_rules_description" {
  description = "Map of description values across all core_network_security_group_security_rules, keyed the same as var.core_network_security_group_security_rules except keys with no description are omitted"
  value       = { for k, v in oci_core_network_security_group_security_rule.core_network_security_group_security_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "core_network_security_group_security_rules_destination" {
  description = "Map of destination values across all core_network_security_group_security_rules, keyed the same as var.core_network_security_group_security_rules except keys with no destination are omitted"
  value       = { for k, v in oci_core_network_security_group_security_rule.core_network_security_group_security_rules : k => v.destination if v.destination != null && length(v.destination) > 0 }
}
output "core_network_security_group_security_rules_destination_type" {
  description = "Map of destination_type values across all core_network_security_group_security_rules, keyed the same as var.core_network_security_group_security_rules except keys with no destination_type are omitted"
  value       = { for k, v in oci_core_network_security_group_security_rule.core_network_security_group_security_rules : k => v.destination_type if v.destination_type != null && length(v.destination_type) > 0 }
}
output "core_network_security_group_security_rules_direction" {
  description = "Map of direction values across all core_network_security_group_security_rules, keyed the same as var.core_network_security_group_security_rules except keys with no direction are omitted"
  value       = { for k, v in oci_core_network_security_group_security_rule.core_network_security_group_security_rules : k => v.direction if v.direction != null && length(v.direction) > 0 }
}
output "core_network_security_group_security_rules_icmp_options" {
  description = "Map of icmp_options values across all core_network_security_group_security_rules, keyed the same as var.core_network_security_group_security_rules except keys with no icmp_options are omitted"
  value       = { for k, v in oci_core_network_security_group_security_rule.core_network_security_group_security_rules : k => one(v.icmp_options) if v.icmp_options != null && length(v.icmp_options) > 0 }
}
output "core_network_security_group_security_rules_is_valid" {
  description = "Map of is_valid values across all core_network_security_group_security_rules, keyed the same as var.core_network_security_group_security_rules except keys with no is_valid are omitted"
  value       = { for k, v in oci_core_network_security_group_security_rule.core_network_security_group_security_rules : k => v.is_valid if v.is_valid != null }
}
output "core_network_security_group_security_rules_network_security_group_id" {
  description = "Map of network_security_group_id values across all core_network_security_group_security_rules, keyed the same as var.core_network_security_group_security_rules except keys with no network_security_group_id are omitted"
  value       = { for k, v in oci_core_network_security_group_security_rule.core_network_security_group_security_rules : k => v.network_security_group_id if v.network_security_group_id != null && length(v.network_security_group_id) > 0 }
}
output "core_network_security_group_security_rules_protocol" {
  description = "Map of protocol values across all core_network_security_group_security_rules, keyed the same as var.core_network_security_group_security_rules except keys with no protocol are omitted"
  value       = { for k, v in oci_core_network_security_group_security_rule.core_network_security_group_security_rules : k => v.protocol if v.protocol != null && length(v.protocol) > 0 }
}
output "core_network_security_group_security_rules_source" {
  description = "Map of source values across all core_network_security_group_security_rules, keyed the same as var.core_network_security_group_security_rules except keys with no source are omitted"
  value       = { for k, v in oci_core_network_security_group_security_rule.core_network_security_group_security_rules : k => v.source if v.source != null && length(v.source) > 0 }
}
output "core_network_security_group_security_rules_source_type" {
  description = "Map of source_type values across all core_network_security_group_security_rules, keyed the same as var.core_network_security_group_security_rules except keys with no source_type are omitted"
  value       = { for k, v in oci_core_network_security_group_security_rule.core_network_security_group_security_rules : k => v.source_type if v.source_type != null && length(v.source_type) > 0 }
}
output "core_network_security_group_security_rules_stateless" {
  description = "Map of stateless values across all core_network_security_group_security_rules, keyed the same as var.core_network_security_group_security_rules except keys with no stateless are omitted"
  value       = { for k, v in oci_core_network_security_group_security_rule.core_network_security_group_security_rules : k => v.stateless if v.stateless != null }
}
output "core_network_security_group_security_rules_tcp_options" {
  description = "Map of tcp_options values across all core_network_security_group_security_rules, keyed the same as var.core_network_security_group_security_rules except keys with no tcp_options are omitted"
  value       = { for k, v in oci_core_network_security_group_security_rule.core_network_security_group_security_rules : k => one(v.tcp_options) if v.tcp_options != null && length(v.tcp_options) > 0 }
}
output "core_network_security_group_security_rules_time_created" {
  description = "Map of time_created values across all core_network_security_group_security_rules, keyed the same as var.core_network_security_group_security_rules except keys with no time_created are omitted"
  value       = { for k, v in oci_core_network_security_group_security_rule.core_network_security_group_security_rules : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "core_network_security_group_security_rules_udp_options" {
  description = "Map of udp_options values across all core_network_security_group_security_rules, keyed the same as var.core_network_security_group_security_rules except keys with no udp_options are omitted"
  value       = { for k, v in oci_core_network_security_group_security_rule.core_network_security_group_security_rules : k => one(v.udp_options) if v.udp_options != null && length(v.udp_options) > 0 }
}

