# encoding: UTF-8
class PetsController < ApplicationController
  before_filter :require_login, except:[:index,:show]

  def index
    @pets = Pet.all.reverse
  end

  def show
    @pet = Pet.find(params[:id])
    @comment = Comment.new
  end

  def new
    @pet = Pet.new
  end

  def create
    puts "in create!!!"
    puts params[:pet]
    @pet = Pet.new(params[:pet])
    @pet.user = session[:user]
    if @pet.save
      redirect_to pets_path
    else
      flash.now[:error] = @pet.errors.full_messages.join("<br/>").html_safe
      render new_pet_path
    end
  end


end
