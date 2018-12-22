class LikesController < ApplicationController
  before_action :authenticate_user

  def create
    @like = Like.new(user_id: @current_user.id, review_id: params[:review_id])
    @like.save
    redirect_to("/reviews/#{params[:review_id]}")
  end

  def destroy
    @like = Like.find_by(user_id: @current_user.id, review_id: params[:review_id])
    @like.destroy
    redirect_to("/reviews/#{params[:review_id]}")
  end
  
end
