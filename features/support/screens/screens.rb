# frozen_string_literal: true

require_all 'C:\\fleu\\features\\support\\screens'

class Screens
  attr_accessor :home, :unidades, :unidade_brasilia

  def initialize
    @home = HomeScreen.new
    @unidades = UnidadesScreen.new
    @unidade_brasilia = UnidadeBrasilia.new
  end
end
