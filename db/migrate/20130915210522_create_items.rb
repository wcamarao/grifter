class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :location
      t.point :lonlat, :geographic => true
      t.index :lonlat, :spatial => true
    end
  end
end
