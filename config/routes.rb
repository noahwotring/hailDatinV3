Rails.application.routes.draw do
  root 'users#home'

  get 'login' => 'sessions#new', as: 'new_session'
  post 'login' => "sessions#create"
  get 'logout' => 'sessions#destroy'

  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
