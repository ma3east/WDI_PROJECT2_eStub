class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "You are now logged in!"
    else
      flash.now.alert = "Invalid login credentials."
    end

    def destroy
      redirect_to root_url, notice: "You are now logged!"
    end
  end
end
