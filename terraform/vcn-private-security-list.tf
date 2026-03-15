# Define a lista de segurança para a subnet privada
resource "oci_core_security_list" "private-security-list" {

  # Dados obrigatórios para a criação da lista de segurança

  compartment_id = oci_identity_compartment.apps-netw-compartment.id # ID do compartimento onde a lista de segurança será criada
  vcn_id         = module.vcn.vcn_id                                 # Define o ID do VCN onde a lista de segurança será aplicada

  # Dados opcionais para a lista de segurança

  display_name = "private-security-list" # Nome visível para a lista de segurança
  # Regras para o trafego de saída
  egress_security_rules {
    stateless        = false        # Refere-se ao monitoramento de estado de tráfego, true desabilita o monitoramento
    destination      = "0.0.0.0/0"  # Permite acesso a qualquer endereço IP
    destination_type = "CIDR_BLOCK" # Tipo de destino, CIDR_BLOCK é a faixa IP autorizada para saída
    protocol         = "all"        # Permite tráfego de todos os protocolos
  }
}
