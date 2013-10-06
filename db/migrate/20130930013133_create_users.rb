class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.string :status, :null => false
      t.string :location

      t.point :lonlat, :geographic => true
      t.index :lonlat, :spatial => true

      t.timestamps
    end
  end
end
