variable "name" {
  description = "Name of the CosmosDB Account."
}

variable "resource_group_name" {
  description = "Name of resource group to deploy resources in."
}

variable "location" {
  description = "The Azure Region in which to create resource."
}

variable "tags" {
  description = "Tags to apply to all resources created."
  type        = map(string)
  default     = {}
}

variable "databases" {
  description = "List of databases"
  type = map(object({
    throughput = number,
    collections = list(object({
      name      = string
      shard_key = string
    }))
  }))
  default = {}
}

variable "ip_range_filter" {
  description = "CosmosDB Firewall Support: This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IP's for a given database account. IP addresses/ranges must be comma separated and must not contain any spaces"
  type        = string
  default     = null
}

variable "is_virtual_network_filter_enabled" {
  description = "Enables virtual network filtering for this Cosmos DB account. Defaults to false"
  type        = bool
  default     = false
}

variable "virtual_network_rules" {
  description = "Specifies virtual_network_rule resource ids, used to define which subnets are allowed to access this CosmosDB account."
  type        = list(string)
  default     = []
}

variable "diagnostics" {
  description = "Diagnostic settings for those resources that support it. See README.md for details on configuration."
  type = object({
    destination   = string,
    eventhub_name = string,
    logs          = list(string),
    metrics       = list(string)
  })
  default = null
}

