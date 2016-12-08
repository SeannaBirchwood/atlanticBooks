class BooksController < ApplicationController

  def index
    @newest_books = GoogleBooks.search('Atlantic Canada',
                  {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc",
                    :count => 20,
                    :order_by => 'newest',
                    :order_by => 'relevance'})
  end

  def show

  end
end