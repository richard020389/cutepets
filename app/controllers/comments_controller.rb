class CommentsController < ApplicationController
  def new
    @pet = Pet.find(params[:pet_id])
    @comment = Comment.new
  end
  def create
    @comment = Comment.new(params[:comment])
    @comment.pet_id = params[:pet_id]
    @comment.save
    redirect_to pet_path(@comment.pet)
  end
end
