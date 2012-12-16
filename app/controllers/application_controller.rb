class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :logged?

  def logged?
    !!session[:user]
  end

  def require_login
    if !logged?
      flash[:error]="you have to log in first"
      redirect_to root_path
    end
  end
end
