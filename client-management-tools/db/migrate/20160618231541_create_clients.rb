class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :cpf
      t.string :phonenumber
      t.text :description
      t.string :company

      t.timestamps null: false
    end
  end
end
