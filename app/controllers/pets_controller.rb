class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end
  def show
    @pet = Pet.find(params[:id])
    @comment = Comment.new
    @vote = @pet.vote
  end
  def new
    @pet = Pet.new
  end
  def create
    @pet = Pet.new(params[:pet])
    if @pet.save
      @pet.vote= Vote.create 
      #flash[:notice]="succeed to submit a link"
      redirect_to pets_path
    else 
      flash.now[:error] = @pet.errors.full_messages.join("<br/>").html_safe
      render new_pet_path
    end
  end
  
end
