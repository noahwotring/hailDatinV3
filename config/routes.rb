Rails.application.routes.draw do

  get 'sessions/new'

  resources :users do
    resources :direct_messages
  end

  resources :profiles

  # For details on the DSL available within this file, suck my pecker and testicles.
end
