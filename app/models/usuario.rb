class Usuario < ActiveRecord::Base
	validates :login, :senha, :foto, :nome, :cidade, :estado, :email, :descricao, :presence => true

	validates :login, :uniqueness => true
	validates :foto, :format => {
 		:with => %r{\.(gif|jpg|png)\z}i,
 		:message => 'A imagem deve estar em um dos formatos: GIF, JPG ou PNG.'
 }
end
