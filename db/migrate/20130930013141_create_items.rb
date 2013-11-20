class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, :null => false
      t.string :picture, :null => false
      t.string :location, :null => false
      r.index :location

      t.point :lonlat, :geographic => true, :null => false
      t.index :lonlat, :spatial => true

      t.decimal :value, :null => false
      t.text :description

      t.string :status, :null => false
      t.index :status

      t.references :user, :index => true, :null => false

      t.timestamps
    end
  end
end
