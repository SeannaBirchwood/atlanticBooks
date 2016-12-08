class ClassicsController < ApplicationController
  def show
    @oldkitchens_book = GoogleBooks.search('"Out of Old Nova Scotia Kitchens"',
                {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc"})
    @oldkitchens = @oldkitchens_book.first

    @colony_book = GoogleBooks.search('"Colony of Unrequited Dreams"',
                {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc"})
    @colony = @colony_book.first

    @mercy_book = GoogleBooks.search('"Mercy Among the Children"',
                {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc"})
    @mercy = @mercy_book.first

    @rock_book = GoogleBooks.search('"Rockbound"',
                {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc"})
    @rock = @rock_book.first

    @mountain_book = GoogleBooks.search('"The Mountain and the Valley"',
                {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc"})
    @mountain = @mountain_book.first

    @shipping_book = GoogleBooks.search('"The Shipping News"',
                {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc"})
    @shipping = @shipping_book.first

    @bluenose_book = GoogleBooks.search('"Bluenose Ghosts"',
                {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc"})
    @bluenose = @bluenose_book.first

    @island_book = GoogleBooks.search('"Island Means Minago"',
                {:api_key => "AIzaSyCvKlUy4ZaVE_QxdMVZ7T37rTyEJZI-9Wc"})
    @island = @island_book.first

    @classic_books = [@bluenose, @shipping, @mountain, @rock, @mercy, @colony, @oldkitchens, @island]
  end
end