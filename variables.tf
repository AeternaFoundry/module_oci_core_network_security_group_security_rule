variable "core_network_security_group_security_rules" {
  description = <<EOT
Map of core_network_security_group_security_rules, attributes below
Required:
    - direction
    - network_security_group_id
    - protocol
Optional:
    - description
    - destination
    - destination_type
    - source
    - source_type
    - stateless
    - icmp_options (block):
        - code (optional)
        - type (required)
    - tcp_options (block):
        - destination_port_range (optional, block):
            - max (required)
            - min (required)
        - source_port_range (optional, block):
            - max (required)
            - min (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - udp_options (block):
        - destination_port_range (optional, block):
            - max (required)
            - min (required)
        - source_port_range (optional, block):
            - max (required)
            - min (required)
EOT

  type = map(object({
    direction                 = string
    network_security_group_id = string
    protocol                  = string
    description               = optional(string)
    destination               = optional(string)
    destination_type          = optional(string)
    source                    = optional(string)
    source_type               = optional(string)
    stateless                 = optional(bool)
    icmp_options = optional(object({
      code = optional(number)
      type = number
    }))
    tcp_options = optional(object({
      destination_port_range = optional(object({
        max = number
        min = number
      }))
      source_port_range = optional(object({
        max = number
        min = number
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    udp_options = optional(object({
      destination_port_range = optional(object({
        max = number
        min = number
      }))
      source_port_range = optional(object({
        max = number
        min = number
      }))
    }))
  }))
}

