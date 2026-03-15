variable "tenancy_ocid" {
  description = "OCID da tenancy"
  sensitive   = true
}
variable "region" {
  description = "Região onde será criado os recursos"
}
variable "tailscale_key" {
  description = "Auth key do Tailscale"
  sensitive   = true
}
variable "ssh_pub_key1" {
  description = "Chave Pública SSH"
  sensitive   = true
}
variable "ssh_pub_key2" {
  description = "Chave Pública SSH"
  default = ""
  sensitive   = true
}
variable "vcn_name" {
  description = "Nome da VCN"
  default     = "vcn-01"
}
variable "vcn_dns_label" {
  description = "DNS label da VCN"
  default     = "vcndns"
}
variable "vm-01_name" {
  description = "Nome da vm-01"
  default     = "vm-01"
}
variable "timezone" {
  description = "Fuso Horário"
  default = "Etc/UTC"
}

variable "gitlab_hostname" {
  description = "Hostname do GitLab"
  default     = "gitlab"
  sensitive = true
}

variable "gitlab_porta_ssh" {
  description = "Porta SSH do GitLab"
  default     = "2222"
  sensitive = true
}

variable "gitlab_home" {
  description = "Diretório home do GitLab"
  default     = "/home/gitlab"
  sensitive = true
}