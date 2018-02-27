Rails.application.routes.draw do
  get 'users/new'

  get 'users/edit'

  get 'users/delete'

  get 'users/index'

  get 'users/show'

  resources :profiles

  # For details on the DSL available within this file, suck my pecker and testicles.
end
