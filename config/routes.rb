Rails.application.routes.draw do
  resources :restaurants, except: [:destroy] do
    resources :reviews, only: [:new, :create, :show]
  end
end
