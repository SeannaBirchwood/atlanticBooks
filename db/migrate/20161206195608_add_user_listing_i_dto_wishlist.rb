class AddUserListingIDtoWishlist < ActiveRecord::Migration[5.0]
  change_table :wishlists do |t|
    t.integer :listing_id
    t.integer :user_id
  end
end
