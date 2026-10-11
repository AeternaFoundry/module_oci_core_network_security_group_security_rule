resource "oci_core_network_security_group_security_rule" "core_network_security_group_security_rules" {
  for_each = var.core_network_security_group_security_rules

  direction                 = each.value.direction
  network_security_group_id = each.value.network_security_group_id
  protocol                  = each.value.protocol
  description               = each.value.description
  destination               = each.value.destination
  destination_type          = each.value.destination_type
  source                    = each.value.source
  source_type               = each.value.source_type
  stateless                 = each.value.stateless

  dynamic "icmp_options" {
    for_each = each.value.icmp_options != null ? [each.value.icmp_options] : []
    content {
      code = icmp_options.value.code
      type = icmp_options.value.type
    }
  }

  dynamic "tcp_options" {
    for_each = each.value.tcp_options != null ? [each.value.tcp_options] : []
    content {
      dynamic "destination_port_range" {
        for_each = tcp_options.value.destination_port_range != null ? [tcp_options.value.destination_port_range] : []
        content {
          max = destination_port_range.value.max
          min = destination_port_range.value.min
        }
      }
      dynamic "source_port_range" {
        for_each = tcp_options.value.source_port_range != null ? [tcp_options.value.source_port_range] : []
        content {
          max = source_port_range.value.max
          min = source_port_range.value.min
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "udp_options" {
    for_each = each.value.udp_options != null ? [each.value.udp_options] : []
    content {
      dynamic "destination_port_range" {
        for_each = udp_options.value.destination_port_range != null ? [udp_options.value.destination_port_range] : []
        content {
          max = destination_port_range.value.max
          min = destination_port_range.value.min
        }
      }
      dynamic "source_port_range" {
        for_each = udp_options.value.source_port_range != null ? [udp_options.value.source_port_range] : []
        content {
          max = source_port_range.value.max
          min = source_port_range.value.min
        }
      }
    }
  }
}

