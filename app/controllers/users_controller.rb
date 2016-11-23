class UsersController < ApplicationController

  def new
  end

  def index
    @user = User.all
    #order by how many books own/read?
  end

  def profile
    @user = User.find params[:id]
    #@review = Review.new
    #@reviews = @book.reviews
  end

  def create
    @user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
