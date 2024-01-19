Rails.application.routes.draw do
  # ユーザー情報に関わる
  # ユーザー一覧
  get 'users/index'
  # ユーザーID
  get "users/:id" => "users#show"
  # 新規ユーザー登録
  get "signup" => "users#new"
  # ユーザー登録
  post "users/create" => "users#create"
  # ユーザー情報の編集
  get "users/:id/edit" => "users#edit"
  # 編集したユーザー情報を再投稿
  post "users/:id/update" => "users#update"

  # 投稿に関わる
  # 投稿一覧
  get 'posts/index'
  # 新規投稿
  get "posts/new" => "posts#new"
  # 投稿一覧のidから投稿を取得
  get "posts/:id" => "posts#show"
  # 新規投稿
  post "posts/create" => "posts#create"
  # 投稿の編集ページ
  get "posts/:id/edit" => "posts#edit"
  # 編集した投稿を再投稿
  post "posts/:id/update" => "posts#update"
  # 投稿の削除
  post "posts/:id/destroy" => "posts#destroy"

  get '/' => 'home#top'
  get "about" => "home#about"
end
