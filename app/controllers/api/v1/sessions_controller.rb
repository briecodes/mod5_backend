class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params['username'])
    if (@user && @user.authenticate(params['password']))
      render json: {
        username: @user.username,
        name: @user.name,
        id: @user.id
      }
    else
      render json: {
        errors: 'Those credentials do not match anything we have in our database.'
      }, status: :unauthorized
    end
  end
end
