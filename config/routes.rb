Rails.application.routes.draw do
  get 'posts/index'
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  # 投稿の編集
  post "posts/:id/update" => "posts#update"
  # 投稿の削除
  post "posts/:id/destroy" => "posts#destroy"

  get '/' => 'home#top'
  get "about" => "home#about"
end
