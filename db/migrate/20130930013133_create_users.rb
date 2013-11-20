class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.string :location

      t.point :lonlat, :geographic => true
      t.index :lonlat, :spatial => true

      t.string :provider, :null => false
      t.string :fbuid, :null => false
      t.string :oauth_token, :null => false
      t.datetime :oauth_expires_at, :null => false

      t.boolean :active, :null => false

      t.timestamps
    end
  end
end
