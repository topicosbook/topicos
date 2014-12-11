class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :login
      t.string :senha, limit: 8
      t.string :foto
      t.string :nome
      t.string :cidade
      t.string :estado
      t.string :email
      t.text :descricao

      t.timestamps
    end
  end
end
