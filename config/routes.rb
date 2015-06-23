Rails.application.routes.draw do
 
  devise_for :users
  
  resources :graphs do
    resources :trackables do
      resources :points
    end
  end

  resources :trackables, only: [:destroy]

  root 'graphs#index'
end
