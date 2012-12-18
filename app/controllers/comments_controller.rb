class CommentsController < ApplicationController
  before_filter :require_login, only:[:create]
  before_filter :find_pet
  def new
    @comment = Comment.new
  end

  def create
    @comment = @pet.comments.build(params[:comment])
    @comment.user = session[:user]
    if @comment.save
      redirect_to pet_path(@pet)
    else
      flash.now[:error]=@comment.errors.full_messages.join("<br/>").html_safe
      render "pets/show"
    end
  end

  private
  def find_pet
    @pet = Pet.find(params[:pet_id])
  end
end
