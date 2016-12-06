class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @user = User.all
    #@user.profilePic="../public/default-profile.png" if @user.avatar.empty?
    #order by how many books own/read?
  end

  def show
    @user = User.find(params[:id])
    #@wishlist = Wishlist.find(params[user.id])
    #@user.profilePic="../public/default-profile.png" if @user.avatar.empty?
  end

  # def profile
  #   @user = User.find params[:id]
  #   #@review = Review.new
  #   #@reviews = @book.reviews
  # end

  def create
    @user = User.new(user_params)
    @user.profilePic = "../../public/default-profile.png"
    if @user.save
      session[:user_id] = user.id
      redirect_to '/login'
    else
      redirect_to '/register'
    end
  end

  def add_to_wishlist(item)
    wishlist.items << item
  end

  private

  def user_params
    params.require(:user).permit(
    :username,
    :email,
    :password,
    :password_confirmation)
  end
end
