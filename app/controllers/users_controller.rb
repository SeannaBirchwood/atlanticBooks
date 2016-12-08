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
    #@user.profilePic="../public/default-profile.png" if @user.avatar.empty?
  end

  # def profile
  #   @user = User.find params[:id]
  #   #@review = Review.new
  #   #@reviews = @book.reviews
  # end

  def create
    @user = User.create(user_params)
    #@user.profilePic = "../../public/default-profile.png"
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Welcome to Read Atlantic"
      redirect_to '/login'
    else
      redirect_to '/register'
    end
  end

  def edit
    @user = User.find(params[:id])
    #@user.profilePic = "../../public/default-profile.png"
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Your changes have been saved"
      redirect_to '/users/:id'
    else
      redirect_to '/users/:id/edit'
    end
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
