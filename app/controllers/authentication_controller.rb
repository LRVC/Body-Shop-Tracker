class AuthenticationController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Thanks for signing in!"
    else
      redirect_to sign_in_path, notice: "Incorrect username and/or password"
    end
  end
end
