class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.string :status, :null => false

      t.integer :source_user_id, :null => false
      t.integer :target_item_id, :null => false

      t.integer :target_user_id, :null => false
      t.integer :source_item_id

      t.timestamps
    end
  end
end
