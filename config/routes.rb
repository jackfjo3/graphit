Rails.application.routes.draw do
  devise_for :users
  resources :graphs do
    resources :entries
    resources :trackables
  end
  root 'graphs#index'
end
