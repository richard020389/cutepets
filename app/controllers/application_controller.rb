class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :is_login

  def is_login
    !!session[:user]
  end

  def require_login
    if is_login
      #
    else
      flash[:error]="you have to log in first"
      redirect_to root_path
    end
  end
end
