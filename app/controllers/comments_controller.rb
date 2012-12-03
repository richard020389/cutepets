class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment])
    @comment.save
    redirect_to pet_path(@comment.pet)
  end
end
