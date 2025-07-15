# This resource gets the kv vault engine ready 
resource "vault_mount" "secrets-mount" {
    for_each = var.secrets-mount
    path        = each.key
    type        = "kv-v2"
    options     = { version = "2" }
    description = each.value["description"]
}

