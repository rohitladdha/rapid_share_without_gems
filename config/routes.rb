Rails.application.routes.draw do
  get 'signup'  => 'users#new'
  get 'login'   => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get '/file_handlers' => 'file_handlers#index'
  post '/file_handlers/uploading' => 'file_handlers#uploading'

  get '/docs' => 'docs#index'
  post '/docs/uploading' => 'docs#uploading'

  get '/docs/fetch_all' => 'docs#fetch_all', as: 'root'

  get '/docs/:id/download' => 'docs#download', as: 'docs_download'

  # get '/:user_id/docs' => 'docs#index'
  # post '/:user_id/docs/uploading' => 'docs#uploading'

  # get '/:user_id/docs/fetch_all' => 'docs#fetch_all'

  resources :users

  # get 'users/new'

  # get 'users/create'

  # get 'users/update'

  # get 'users/edit'

  # get 'users/destroy'

  # get 'users/index'

  # get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
