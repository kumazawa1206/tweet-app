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
    @post = Post.new

  end

  # createメソッド 投稿(content)をインスタンス生成し取得する。
  # その後、インスタンを保存し"/posts/index"ページに返ってくる
  def create
    @post = Post.new(content: params[:content])
    
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  # 投稿の編集
  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]

    if @post.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/posts/index")
    else
      render("/posts/edit")
    end
  end

  # 投稿の削除
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy

    flash[:notice] = "投稿を削除しました"
    redirect_to("/posts/index")
  end
end