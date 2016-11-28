class BooksController < ApplicationController
  require 'httparty'
  def index
    @book = Book.all #.order(created_at: :desc)
    @newest_books = GoogleBooks.search('"Nova Scotia"',
                  {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc",
                    :count => 20,
                    :order_by => 'newest'})

  end

  def show
    @book = Book.find params[:id]
    #@review = Review.new
    #@reviews = @book.reviews
  end

end
