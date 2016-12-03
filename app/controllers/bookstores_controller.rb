class BookstoresController < ApplicationController

  def index
    @bookstores = Bookstore.all
  end

  def new
    @bookstore = Bookstore.new
  end

end
