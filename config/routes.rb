Rails.application.routes.draw do
  resources :restaurants, except: [:destroy]
end
