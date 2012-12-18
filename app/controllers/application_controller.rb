# encoding: UTF-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :logged?, :format_time

  def logged?
    !!session[:user]
  end

  def require_login
    if !logged?
      flash[:error]="you have to log in first"
      redirect_to root_path
    end
  end

  def format_time(time)
    "#{time.year}年#{time.month}月#{time.day}日"
  end
end
