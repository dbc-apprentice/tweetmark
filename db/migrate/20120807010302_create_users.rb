class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :twitter_name
      t.string :name
      t.string :auth_token
      t.string :auth_secret
      t.string :image_url

      t.timestamps
    end

    add_index :users, :uid, unique: true
    add_index :users, :twitter_name, unique: true
    add_index :users, :auth_token, unique: true
    add_index :users, :auth_secret, unique: true
    add_index :users, :image_url, unique: true
  end
end
