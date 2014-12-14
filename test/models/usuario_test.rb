require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
   test "usuario attributes must not be empty" do
     usuario = Usuario.new
     assert usuario.invalid?
     assert usuario.errors[:login].any?
     assert usuario.errors[:senha].any?
     assert usuario.errors[:foto].any?
     assert usuario.errors[:nome].any?
     assert usuario.errors[:cidade].any?
     assert usuario.errors[:estado].any?
     assert usuario.errors[:email].any?
     assert usuario.errors[:descricao].any?     
   end

   def new_usuario(foto)
   Usuario.new(:login => "nome123",
        :senha => "1a2a3a",
        :foto => foto,
        :nome => "Anderson Alves",
        :cidade => "Alfenas",
        :estado => "MG",
        :email => "lorem@ipsum.com",
        :descricao => "Lorem Ipsum bla bla bla!")
   end
   
   test "foto" do
     ok = "%w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif }"
     bad = "%w{ fred.doc fred.gif/more fred.gif.more }"
   ok.each do | name |
     assert new_usuario(name).valid?, "#{name} shouldn't be invalid"
   end
   
   bad.each do | name |
     assert new_usuario(name).invalid?, "#{name} shouldn't be valid"
   end
   end   
end
