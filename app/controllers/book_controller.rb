class BookController < ApplicationController
  def index  	
  	@usuarios = Usuario.order(:nome)
  end
end
