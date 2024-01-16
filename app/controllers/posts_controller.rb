class PostsController < ApplicationController
  
  # indexメソッド 投稿一覧を並べ替える
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  # showメソッド 投稿のidを取得する
  def show
    @post = Post.find_by(id: params[:id])
  end

  def new

  end

  # createメソッド 投稿(content)をインスタンス生成し取得する。
  # その後、インスタンを保存し"/posts/index"ページに返ってくる
  def create
    @post = Post.new(content: params[:content])
    @post.save

    redirect_to("/posts/index")
  end
end