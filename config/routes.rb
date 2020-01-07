Rails.application.routes.draw do
  #一覧画面へのルーティング
  get '/users', to: 'users#index'
  #新規投稿用のルーティング
  get '/users/new', to: 'users#new'
  #新規登録を行うためのルーティング
  post '/users', to: 'users#create'
  #編集のためのルーティング
  get '/users/:id/edit', to: 'users#edit'
  #編集後のファイルのルーティング
  patch '/users/:id', to: 'users#update'
  #削除を行うためのルーティング
  delete '/users/:id', to: 'users#destroy'

end
