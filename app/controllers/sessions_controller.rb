class SessionsController < ApplicationController
  def new
    @user=User.new
    session[:origin_path] = params[:origin_path]
  end

  def create
    @user=User.new(params[:user])
    @real_user=User.find_by_username(@user.username)
    if @real_user && @real_user.authenticate(@user.password)
      flash[:notice] = "welcome, #{@real_user.username}"
      session[:user] = @real_user
      redirect_back_or_to_root

    else
      flash.now[:error]="could not log in!"
      render 'new'
    end
  end

  def delete
    session[:user]=nil
    redirect_to root_path,notice:"you have logged out"
  end

  def redirect_back_or_to_root
      if session[:origin_path]
        redirect_to session[:origin_path]
        session[:origin_path]=nil
      else
        redirect_to root_path
      end
  end
  
end
