Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :city, only: [:index, :show, :create]
      # get 'city/index'
      # get 'city/show'
      # get 'city/create'
    end
  end
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :show, :create, :destroy]
      # get 'products/index'
      # get 'products/show'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
