class BooksController < ApplicationController
  require 'httparty'
  def index
    @newest_books = GoogleBooks.search('Halifax',
                  {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc",
                    :count => 20,
                    :order_by => 'newest'})

    @anne_books = GoogleBooks.search('isbn:9781409143529',
                {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc"})
    @anne_book = @anne_books.first


  end

  def show

  end

end
