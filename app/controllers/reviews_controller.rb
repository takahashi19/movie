class ReviewsController < ApplicationController
  before_action :authenticate_user
  before_action :ensure_correct_user, {only: [:edit, :update, :destroy]}
  
  def index
    @reviews = Review.includes(:movie).all.order(created_at: :desc)
    @movie = Movie.all
    # @reviewsでincludesで上手く「含めていない」なので@movieで全映画を取得してif文でIDを紐付ける手法
  end
  
  def show
    @review = Review.find_by(id: params[:id])
    @user = @review.user
    @likes_count = Like.where(review_id: @review.id).count
    #いいねとReviewカウントの紐付け。countメソッドでその中に入ってる分の「数を取得」する
  end
  
  def create
    @review = Review.new(
      content: params[:content],
      hyouka: params[:hyouka],
      user_id: @current_user.id,
      #新規投稿時に現在ログインしている@current_userユーザーIDを加える
      movie_id: params[:movie_id]
    )
   
    @movies = Movie.all
    if @review.save
      @aves = Review.group(:movie_id).average(:hyouka)
      @movies.each do | movie |
        @aves.each{|key, val|
          if key == movie.id
            movie.star = val
            movie.save
          end
        }
      end

    #hyoukaを計算させて平均値をstarに代入したもの
      flash[:notice] = "レビューを投稿しました"
      redirect_to("/reviews/index")
    else
      flash[:notice] = "投稿に失敗しました"
      @movie = Movie.find_by(id: params[:movie_id])
      @review = Review.new
      @reviews = @movie.reviews.order(created_at: :desc).limit(2)
      render "movies/show"
    end
    
  end
  
  #{@movie.movie.id}
  def edit
    @review = Review.find_by(id: params[:id])
  end
  
  def update
    @review = Review.find_by(id: params[:id])
    @review.content = params[:content]
    if @review.save
      flash[:notice] = "レビューを編集しました"
      redirect_to("/reviews/index")
    else
      render("reviews/edit")
    end
  end
  
  def destroy
    @review = Review.find_by(id: params[:id])
    @review.destroy
    flash[:notice] = "レビューを削除しました"
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
