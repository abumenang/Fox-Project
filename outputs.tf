output "key_pair_public_key" {
  description = "public_key_code"
  value       = concat(tls_private_key.Fox-key.*.public_key_openssh, [""])[0]
}