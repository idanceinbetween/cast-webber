class SessionsController < ApplicationController

  def login_form
  end

  def login
    user = User.find_by(username: params[:user][:username])

    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      @id = user.id
      redirect_to "/profile"
    else
      flash[:notice] = "Wrong credentials! You dun goofed!"
      redirect_to "/login_form"
    end
  end

  def logout
    reset_session
    redirect_to "/login_form"
  end
end
