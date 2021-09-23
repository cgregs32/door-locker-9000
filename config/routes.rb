Rails.application.routes.draw do
  resources :lock_attempts, only: [:create]
end
