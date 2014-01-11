Horschgallery::Application.routes.draw do
  # Routes for the Photo resource:
  # CREATE


  get "/login" => 'sessions#new'
  get "/logout" => 'sessions#destroy'
  post "/sessions" => 'sessions#create'




 root 'photos#index'

  resources :users
  resources :photos
  resources :categories




  post '/search' => 'photos#search'

  # get '/photos/new', controller: 'photos', action: 'new', :as => 'new_photo'
  # post '/photos', controller: 'photos', action: 'create'

  # # READ
  # get '/photos', controller: 'photos', action: 'index'
  # get '/photos/:id', controller: 'photos', action: 'show', :as => 'photo'

  # # UPDATE
  # get '/photos/:id/edit', controller: 'photos', action: 'edit', :as => 'edit_photo'
  # patch '/photos/:id', controller: 'photos', action: 'update'

  # # DELETE
  # delete '/photos/:id', controller: 'photos', action: 'destroy'

end
