class CommentsController < ApplicationController
  def new
    @pet = Pet.find(params[:pet_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.pet_id = params[:pet_id]
    if @comment.save
      redirect_to pet_path(@comment.pet)
    else
      #redirect_to pet_path(@comment.pet)
      flash.now[:error]=@comment.errors.full_messages.join("<br/>").html_safe
      @pet=Pet.find(params[:pet_id])
      render "pets/show"
    end
  end
end
