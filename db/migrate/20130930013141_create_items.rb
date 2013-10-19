class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, :null => false
      t.string :picture, :null => false
      t.string :status, :null => false
      t.string :location, :null => false

      t.decimal :value, :null => false
      t.text :description

      t.point :lonlat, :geographic => true
      t.index :lonlat, :spatial => true

      t.references :user, :index => true, :null => false

      t.timestamps
    end
  end
end
