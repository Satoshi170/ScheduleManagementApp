class PostsController < ApplicationController
  # スケジュールの一覧表示
  def home
    @posts = Post.all
  end

  # スケジュールの作成
  def new
    @post = Post.new
  end

  # スケジュールの登録
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to '/'
    else
      render 'new', status: :unprocessable_entity
    end
  end

  # スケジュールの詳細ページ
  def show
    @post = Post.find_by(id: params[:id])
  end

  # スケジュールの編集
  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    
  end

  # スケジュールの削除
  def destroy
    @post = Post.find_by(id: params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :startdate, :enddate, :allday, :content)
  end

end
