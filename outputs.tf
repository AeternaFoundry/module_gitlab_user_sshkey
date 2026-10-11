output "user_sshkeys_id" {
  description = "Map of id values across all user_sshkeys, keyed the same as var.user_sshkeys except keys with no id are omitted"
  value       = { for k, v in gitlab_user_sshkey.user_sshkeys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_sshkeys_created_at" {
  description = "Map of created_at values across all user_sshkeys, keyed the same as var.user_sshkeys except keys with no created_at are omitted"
  value       = { for k, v in gitlab_user_sshkey.user_sshkeys : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "user_sshkeys_expires_at" {
  description = "Map of expires_at values across all user_sshkeys, keyed the same as var.user_sshkeys except keys with no expires_at are omitted"
  value       = { for k, v in gitlab_user_sshkey.user_sshkeys : k => v.expires_at if v.expires_at != null && length(v.expires_at) > 0 }
}
output "user_sshkeys_key" {
  description = "Map of key values across all user_sshkeys, keyed the same as var.user_sshkeys except keys with no key are omitted"
  value       = { for k, v in gitlab_user_sshkey.user_sshkeys : k => v.key if v.key != null && length(v.key) > 0 }
}
output "user_sshkeys_key_id" {
  description = "Map of key_id values across all user_sshkeys, keyed the same as var.user_sshkeys except keys with no key_id are omitted"
  value       = { for k, v in gitlab_user_sshkey.user_sshkeys : k => v.key_id if v.key_id != null }
}
output "user_sshkeys_title" {
  description = "Map of title values across all user_sshkeys, keyed the same as var.user_sshkeys except keys with no title are omitted"
  value       = { for k, v in gitlab_user_sshkey.user_sshkeys : k => v.title if v.title != null && length(v.title) > 0 }
}
output "user_sshkeys_user_id" {
  description = "Map of user_id values across all user_sshkeys, keyed the same as var.user_sshkeys except keys with no user_id are omitted"
  value       = { for k, v in gitlab_user_sshkey.user_sshkeys : k => v.user_id if v.user_id != null }
}

