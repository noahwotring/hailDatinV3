Rails.application.routes.draw do
  root 'sessions#new'
  get 'login' => 'sessions#new', as: 'new_session'
  post 'login' => "sessions#create"
  get 'logout' => 'sessions#destroy'

  resources :users do
    resources :direct_messages
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
