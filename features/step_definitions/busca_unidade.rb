# frozen_string_literal: true

Dado('que o usuário esteja na tela de seleção das Unidades') do
  @screens.home.acessar_unidades
  @screens.unidades.permissao_local
  @screens.unidades.confirmar_unidade_screen
  expect($unidades_destaque).to be true
end

Quando('o usuário selecionar a unidade {string}') do |unidade|
  @screens.unidades.selecionar_unidade(unidade)
end

Entao('deverá visualizar o endereço {string}') do |_endereco|
  @screens.unidade_brasilia.confirmar_endereco
  # expect($confirma_endereco.text).to eql endereco
end
