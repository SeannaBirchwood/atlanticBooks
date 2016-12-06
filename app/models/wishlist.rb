class Wishlist < ApplicationRecord

  belongs_to :user
  has_many :line_items

  has_and_belongs_to_many :items

end
