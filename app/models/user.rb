class User < ApplicationRecord
  has_secure_password

  #mount_uploader :image, ProductImageUploader

  has_many :books

  #belongs_to :bookclub

  #has_one :wishlist

  has_one :profile

  has_one :wishlist

  validates :username, presence: true
  validates :email, presence: true
  validates :location, presence: true

end
