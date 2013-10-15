class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, :null => false
      t.string :picture, :null => false
      t.string :status, :null => false
      t.string :location
      t.text :description

      t.decimal :value, :null => false
      t.integer :user_id, :null => false

      t.point :lonlat, :geographic => true
      t.index :lonlat, :spatial => true

      t.timestamps
    end
  end
end
