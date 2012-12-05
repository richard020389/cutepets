class VotesController < ApplicationController
  def update
    pet = Pet.find(params[:pet_id]) 
    vote= Vote.find(params[:id])
    if params[:type]=="up"
      vote.vote_count +=1
    elsif params[:type]=="down"
      vote.vote_count -=1
    end
    vote.save

    redirect_to pet_path(pet)
  end
end
