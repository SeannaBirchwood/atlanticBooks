# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding Data ..."

#Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

#Only run on development (local) instances not on production, etc.
raise "Development seeds only (for now)!" unless Rails.env.development?

puts "Re-creating fake Users ..."

User.destroy_all

User.create!({
  username: Faker::App.name,
  email: Faker::Internet.email,
  password_digest: Faker::Crypto.md5,
  avatar: Faker::Avatar.image,
  location: Faker::Address.city,
  bookclub: Faker::Pokemon.name,
  wishlist: Faker::Hipster.words(4, true, true),
  bookshelf: Faker::Book.title
  })

User.create!({
  username: Faker::App.name,
  email: Faker::Internet.email,
  password_digest: Faker::Crypto.md5,
  avatar: Faker::Avatar.image,
  location: Faker::Address.city,
  bookclub: Faker::Pokemon.name,
  wishlist: Faker::Hipster.words(4, true, true),
  bookshelf: Faker::Book.title
  })

User.create!({
  username: Faker::App.name,
  email: Faker::Internet.email,
  password_digest: Faker::Crypto.md5,
  avatar: Faker::Avatar.image,
  location: Faker::Address.city,
  bookclub: Faker::Pokemon.name,
  wishlist: Faker::Hipster.words(4, true, true),
  bookshelf: Faker::Book.title
  })
