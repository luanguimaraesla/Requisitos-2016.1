class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :client, index: true
      t.datetime  :deadline
      t.timestamps null: false
    end
  end
end
