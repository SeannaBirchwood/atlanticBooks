class BooksController < ApplicationController

  def index
    @newest_books = GoogleBooks.search('Atlantic Canada',
                  {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc",
                    :count => 10,
                    :order_by => 'newest'})
  end

  def show
  end
end