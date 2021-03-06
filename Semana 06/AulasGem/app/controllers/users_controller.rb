class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = pagy(User.all
  end

  def create
    @user = User.new(users_params)
    if @user.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def users_params
      params.require('user').permit(:email, :password, :photo)
    end
end
