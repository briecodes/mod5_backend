class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update, :show]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    user = User.new(user_params)
    if user.save

      payload = {
        username: user.username,
        name: user.name
      }
      token = JWT.encode payload, ENV['JWT_SECRET'], 'HS256'

      # render json: {user: user}, status: :accepted
      render json: {
        token: token,
        user: user
      }
      
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private
    def user_params
      params.permit(:username, :password, :name)
    end

    def find_user
      @user = User.find(params[:id])
    end
end
