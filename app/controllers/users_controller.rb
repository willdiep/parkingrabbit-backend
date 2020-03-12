class UsersController < ApplicationController
  before_action :find_user, only: [:show, :create, :update, :destroy]

  def index
    users = User.all
    render json: UserSerializer.new(users)
  end

  def show
    user = User.find(params[:id])
    render json: UserSerializer.new(user)
  end

  def create
      @user = User.create_or_find_by(user_params)
      render json: @user
  end

  def update
      @user.update(user_params)
      render json: @user
  end

  def destroy
      @user.delete
  end

  private

  def find_user
      @user = User.find_by(id: params[:id])
  end

  def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
  end


end
