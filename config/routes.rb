Rails.application.routes.draw do
  resources :lock_attempts, only: [:create]

  root to: 'lock_attempts#new'
end
