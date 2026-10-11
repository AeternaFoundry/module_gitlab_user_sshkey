resource "gitlab_user_sshkey" "user_sshkeys" {
  for_each = var.user_sshkeys

  key        = each.value.key
  title      = each.value.title
  expires_at = each.value.expires_at
  user_id    = each.value.user_id
}

