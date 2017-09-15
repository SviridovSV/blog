class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end

  def authorize_as_admin
    redirect_to '/login' unless current_user && admin?(current_user)
  end


  def admin?(user)
    user.role == "admin"
  end

  def copywriter?(user)
    user.role == "copywriter"
  end
end
