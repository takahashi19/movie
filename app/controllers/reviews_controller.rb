class ReviewsController < ApplicationController
  before_action :authenticate_user
  before_action :ensure_correct_user, {only: [:edit, :update, :destroy]}
  
  def index
    @reviews = Review.all.order(created_at: :desc)
  end
  
  def show
    @review = Review.find_by(id: params[:id])
    @user = @review.user
    @likes_count = Like.where(review_id: @review.id).count
  end
  
  def new
    @review = Review.new
  end
  
  def create
    @review = Review.new(
      content: params[:content],
      user_id: @current_user.id
    )
    if @review.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/reviews/index")
    else
      render("reviews/new")
    end
  end
  
  def edit
    @review = Review.find_by(id: params[:id])
  end
  
  def update
    @review = Review.find_by(id: params[:id])
    @review.content = params[:content]
    if @review.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/reviews/index")
    else
      render("reviews/edit")
    end
  end
  
  def destroy
    @review = Review.find_by(id: params[:id])
    @review.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/reviews/index")
  end
  
  def ensure_correct_user
    @review = Review.find_by(id: params[:id])
    if @review.user_id != @current_user.id
      flash[:notice] = "権限がありません"
      redirect_to("/reviews/index")
    end
  end
  
end