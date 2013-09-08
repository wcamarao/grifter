class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :location
      t.integer :fbuid, :limit => 8
      t.decimal :latitude, :precision => 20, :scale => 17
      t.decimal :longitude, :precision => 20, :scale => 17

      t.timestamps
    end
  end
end
