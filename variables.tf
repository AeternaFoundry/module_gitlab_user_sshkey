variable "user_sshkeys" {
  description = <<EOT
Map of user_sshkeys, attributes below
Required:
    - key
    - title
Optional:
    - expires_at
    - user_id
EOT

  type = map(object({
    key        = string
    title      = string
    expires_at = optional(string)
    user_id    = optional(number)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

