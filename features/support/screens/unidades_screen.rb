# frozen_string_literal: true

class UnidadesScreen
  def initialize
    @negar = 'com.android.permissioncontroller:id/permission_deny_button'
    @negar_nao_perguntar = 'com.android.permissioncontroller:id/permission_deny_and_dont_ask_again_button'
    @unidades_em_destaque = 'br.com.grupofleury.fleury.hml:id/main_point_of_care_title'
  end

  def confirmar_unidade_screen
    $unidades_destaque = find_element(:id, @unidades_em_destaque).displayed?
  end

  def permissao_local
    # decisão para quando exibe modal de permissão de acesso a localização
    if @negar.size.positive?
      find_element(:id, @negar).click
    elsif @negar_nao_perguntar.size.positive?
      find_element(:id, @negar_nao_perguntar).click
    else
      puts 'permissao nao solicitada'
    end
  end

  def selecionar_unidade(unidade)
    # descer a tela até a unidade que será confirmado o endereço
    scroll_to(unidade)
    find_element(:xpath, "//*[@text='#{unidade}']").click
  end
end
