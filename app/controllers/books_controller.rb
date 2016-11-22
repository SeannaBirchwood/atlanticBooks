class BooksController < ApplicationController
  def index
    @book = Book.all #.order(created_at: :desc)

  end

  def show
    @book = Book.find params[:id]
    #@review = Review.new
    #@reviews = @book.reviews
  end

end
