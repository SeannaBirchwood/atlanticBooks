class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :username
      t.string :email
      t.string :location
      t.string :bookclub
      t.string :wishlist
      t.string :bookshelf
      t.string :avatar
      t.timestamps
    end
  end
end
