# ----------------------------------------
# Required Variables
# ----------------------------------------

variable "ovh_endpoint" {
  description = "Specify which API endpoint to use"
  type        = string
}

variable "zone" {
  description = "The domain to add the records to"
  type        = string
}

variable "records" {
  description = "DNS records"
  type = set(object({
    name    = string
    type    = string
    ttl     = number
    targets = list(string)
  }))
}

# ----------------------------------------
# Optional Variables
# ----------------------------------------

variable "ovh_application_key" {
  description = "The OVH API application key"
  type        = string
  default     = null
}

variable "ovh_application_secret" {
  description = "The OVH API application secret"
  type        = string
  default     = null
}

variable "ovh_consumer_key" {
  description = "The OVH API consumer key"
  type        = string
  default     = null
}
