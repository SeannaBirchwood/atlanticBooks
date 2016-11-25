# class GoogleBooksController < ActionController::Base
class HomeController < ApplicationController

  def index
  # @googlebooks = GoogleBooks.all
  puts 'ahhhhH!H!H!H'
    @newest_books = GoogleBooks.search('Nova Scotia', {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc", :order_by => 'newest'})
  end
end