class Bookstore < ApplicationRecord
  has_many :location
  has_many :phonenumber
  has_one :name
end
