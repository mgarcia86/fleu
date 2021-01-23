# frozen_string_literal: true

class UnidadeBrasilia
  def confirmar_endereco
    # necessário tratamento na captura do endereço da unidade, removendo quebra de linha "/\n/"
    $confirma_endereco = find_elements(:xpath, '//android.widget.TextView[1]')[1].text.gsub(/\n/, '')
  end
end