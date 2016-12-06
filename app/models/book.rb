class Book < ActiveRecord::Base
  #belongs_to :author

  acts_as_favable

  has_one :pub_date
  has_many :genre
  has_one :publisher

  def average_rating
  	average = comments.map(&:rating)
  	average.reduce(:+) / average.size.to_f
  end

  def fave
  favable = Model.create
  favable.favorites.create(:url => "<%= book.image_link(:zoom => 5)")
  end

  def show
    favable = Model.find(1)
    favorites = favable.favorites.recent.limit(10).all
  end
end
