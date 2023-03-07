class PostsController < ApplicationController
  #スケジュールの一覧表示
  def home
    @posts = Post.all
  end

  #スケジュールの作成
  def new
  end

  #スケジュールの登録
  def create
  end

  #スケジュールの詳細ページ
  def show
    @post = Post.find_by(id: params[:id])
  end

  #スケジュールの編集
  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    
  end

  #スケジュールの削除
  def destroy
    @post = Post.find_by(id: params[:id])
  end

end
