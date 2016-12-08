class UsersController < ApplicationController

  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user, only: [:edit, :update]

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
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Your changes have been saved"
      redirect_to @user
    else
      render 'edit'
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

  def logged_in_user
    unless session[:user_id]
      flash[:danger] = "Please log in."
      redirect_to '/login'
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to '/login' unless current_user?(@user)
  end

end
