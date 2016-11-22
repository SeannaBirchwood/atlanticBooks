class Book < ActiveRecord::Base
  #belongs_to :author

  has_one :pub_date
  has_many :genre
  has_one :publisher

  def average_rating
  	average = comments.map(&:rating)
  	average.reduce(:+) / average.size.to_f
  end

end
