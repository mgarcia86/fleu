# frozen_string_literal: true

class HomeScreen
  def initialize
    @bem_vindo = 'br.com.grupofleury.fleury.hml:id/txtHomeNotLoggedWelcome'
    @unidades = 'br.com.grupofleury.fleury.hml:id/title_points_of_care'
  end

  def confirmar_home_screen
    $confirma_home = find_element(:id, @bem_vindo).displayed?
  end

  def acessar_unidades
    find_element(:id, @unidades).click
  end
end
