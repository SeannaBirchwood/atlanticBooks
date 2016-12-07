class BookstoresController < ApplicationController

  def index
    @bookstore = Bookstore.all
  end

  def new
    @bookstore = Bookstore.new
  end

end
