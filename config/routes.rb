Rails.application.routes.draw do
  resources :users
  get 'users/new' => 'users#new', as: 'new_user'
  post 'users' => 'users#create'
  get 'users/edit'
  get 'users/delete'
  get 'users' => 'users#index', as: 'users_index'

  get 'users/:id' => "users#show", as: 'show_user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
