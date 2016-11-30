class GenresController < ApplicationController
  def show
    @fiction_ns = GoogleBooks.search('"Nova Scotia", subject: fiction',
                {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc",
                  :count => 10})
    @nonfiction_ns = GoogleBooks.search('"Nova Scotia", subject: fiction',
                {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc",
                  :count => 10})

  end
end
