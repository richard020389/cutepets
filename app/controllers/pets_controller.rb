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
    @pet.save
    @pet.vote= Vote.create 
    redirect_to pets_path
  end
  
end
