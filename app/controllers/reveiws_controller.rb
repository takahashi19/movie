class ReveiwsController < ApplicationController
  before_action :authenticate_user
  before_action :ensure_correct_user, {only: [:edit, :update, :destroy]}
  
  def index
    @reveiws = Reveiw.all.order(created_at: :desc)
  end
  
  def show
    @reveiw = Reveiw.find_by(id: params[:id])
    @user = @reveiw.user
    @likes_count = Like.where(reveiw_id: @reveiw.id).count
  end
  
  def new
    @reveiw = Reveiw.new
  end
  
  def create
    @reveiw = Reveiw.new(
      content: params[:content],
      user_id: @current_user.id
    )
    if @reveiw.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/reveiws/index")
    else
      render("reveiws/new")
    end
  end
  
  def edit
    @reveiw = Reveiw.find_by(id: params[:id])
  end
  
  def update
    @reveiw = Reveiw.find_by(id: params[:id])
    @reveiw.content = params[:content]
    if @reveiw.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/reveiws/index")
    else
      render("reveiws/edit")
    end
  end
  
  def destroy
    @reveiw = Reveiw.find_by(id: params[:id])
    @reveiw.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/reveiws/index")
  end
  
  def ensure_correct_user
    @reveiw = Reveiw.find_by(id: params[:id])
    if @reveiw.user_id != @current_user.id
      flash[:notice] = "権限がありません"
      redirect_to("/reveiws/index")
    end
  end
  
end
