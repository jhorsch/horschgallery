class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
  @user = User.new
    @user.email_address = params[:user][:email_address]
    @user.password = params[:user][:password]
    @user.password_confirmation = @user.password
    @user.firstname = params[:user][:firstname]
    @user.lastname = params[:user][:lastname]

    if @user.save
      redirect_to users_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @user.email_address = params[:user][:email_address]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password]
    @user.firstname = params[:user][:firstname]
    @user.lastname = params[:user][:lastname]

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url
    else
      render 'new'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end

private

  def set_user
    @user = User.find(params[:id])
  end
end