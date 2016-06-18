class AddFieldsToClient < ActiveRecord::Migration
  def change
    add_column :clients, :username, :string
    add_column :clients, :name    , :string
    add_column :clients, :cpf     , :string
    add_column :clients, :phone   , :string
    add_column :clients, :company , :string
    add_column :clients, :address , :string
  end
end
