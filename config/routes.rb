Rails.application.routes.draw do
  get 'signup'  => 'users#new'
  get 'login'   => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get '/docs' => 'docs#index'
  post '/docs/uploading' => 'docs#uploading'
  get '/docs/fetch_all' => 'docs#fetch_all', as: 'root'
  get '/docs/:id/download' => 'docs#download', as: 'docs_download'

  resources :users

end
