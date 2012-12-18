class VotesController < ApplicationController
  before_filter :require_login, only:[:create]

  def create
    pet = Pet.find(params[:pet_id])
    vote= pet.votes.build
    vote.user = session[:user]
    vote.direct = params[:direct]
    vote.save

    if params[:from]=="index"
      redirect_to pets_path
    elsif params[:from]=="show"
      redirect_to pet_path(pet)
    end
  end

end
