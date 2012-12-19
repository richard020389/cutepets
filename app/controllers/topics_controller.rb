class TopicsController < ApplicationController
  def show
    @topic = Topic.find(params[:id])
    @pets = @topic.pets.reverse
  end
end
