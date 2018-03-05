Rails.application.routes.draw do
  root 'users#home'

  get 'login' => 'sessions#new', as: 'new_session'
  post 'login' => "sessions#create"
  get 'logout' => 'sessions#destroy'


  get 'user_profile/:id' => 'profiles#show', as: 'user_profile'
  get 'user_profile/:id/edit' => 'profiles#edit', as: 'edit_profile'
  patch 'user_profile/:id/edit' => 'profiles#update'
  resources :users do
    resources :profiles
  end
  resources :conversations do
    resources :messages
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
