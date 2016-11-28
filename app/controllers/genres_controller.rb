class GenresController < ApplicationController
  def show
    @fiction_ns = GoogleBooks.search('"Nova Scotia", categories: fiction',
                {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc",
                  :count => 20,
                  :order_by => 'newest'})

  end
end
