class ProvincesController < ApplicationController

  def index
   @ns_books = GoogleBooks.search('"Nova Scotia"',
      {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc",
        :count => 20})

   @nb_books = GoogleBooks.search('"New Brunswick" Canada',
      {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc",
        :count => 20})

   @pei_books = GoogleBooks.search('inauthor:"Lucy Maud Montgomery"',
      {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc",
        :count => 20})

   @nfld_books = GoogleBooks.search('Newfoundland',
      {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc",
        :count => 20})
  end
end
