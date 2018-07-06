class SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params['username'])
    if (@user && @user.authenticate(params['password']))
      payload = {
        username: @user.username,
        name: @user.name
      }
      token = JWT.encode payload, ENV['JWT_SECRET'], 'HS256'

      render json: {
        user: @user,
        token: token
        # username: @user.username,
        # name: @user.name,
        # id: @user.id
      }
    else
      render json: {
        errors: 'Those credentials do not match anything we have in our database.'
      }, status: :unauthorized
    end
  end
end
