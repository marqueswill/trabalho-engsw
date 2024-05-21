class UsuariosController < ApplicationController
  def index
    @usuario = Usuario.new
    @usuarios = Usuario.all
  end
end
