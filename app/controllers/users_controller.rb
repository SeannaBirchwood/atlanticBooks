class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def profile
    @user = User.find params[:username]
    #@review = Review.new
    #@reviews = @book.reviews
  end
end
