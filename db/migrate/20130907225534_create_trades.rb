class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :user_id
      t.integer :item_id
      t.string :status

      t.timestamps
    end
  end
end
