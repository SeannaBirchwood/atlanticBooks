class RemoveClubWishShelf < ActiveRecord::Migration[5.0]
  change_table :users do |t|
    t.remove :bookclub, :wishlist, :bookshelf
  end
end
