class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :current_user

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def fetch_user(id)
    User.find(id) || reset_session unless id.nil?
  end

  def reset_session
    session[:user_id] = nil
  end

end
