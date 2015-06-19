Rails.application.routes.draw do
 
  devise_for :users
  resources :graphs do
    resources :trackables do
      resources :points
    end
  end
  root 'graphs#index'
end
