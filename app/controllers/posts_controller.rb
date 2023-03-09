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
      redirect_to '/', flash: {success: "新規追加に成功しました"}
    else
      flash.now[:danger] = "新規追加に失敗しました"
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
    @post = Post.find_by(id: params[:id])
    if @post.update(post_params)
      redirect_to '/', flash: {success: "更新に成功しました"}
    else
      flash.now[:danger] = "更新に失敗しました"
      render '/'
    end
  end

  # スケジュールの削除
  def destroy
    @post = Post.find_by(id: params[:id])
    if @post.destroy
      redirect_to '/', flash: {success: "削除に成功しました"}
    else
      flash.now[:danger] = "削除に失敗しました"
      render '/'
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :startdate, :enddate, :allday, :content)
  end

end