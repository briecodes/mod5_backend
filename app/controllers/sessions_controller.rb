class SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params['username'])
    if (@user && @user.authenticate(params['password']))

      token = create_token({username: @user.username, name: @user.name, user_id: @user.id})
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


# eyJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6ImJyaWVzIiwibmFtZSI6IkJyaWUiLCJ1c2VyX2lkIjoxfQ.zGgb1-9mpGEoN6Vz7op1eA2_oJzVt5slluurTllOZic
# eyJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6InN1bnNoaW5lMSIsIm5hbWUiOiJUaGUgU3VuIn0._caVYoB7zy3TUXLwICWbbKeKDJBgQmFMPBzEpyuVNg8