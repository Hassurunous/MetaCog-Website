Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :new, :create, :show, :destroy] do
    resources :comments, only: [:index, :create, :destroy]
  end

  root to: "static_pages#home"

  get '/signup', to: 'users#new'

  get 'static_pages/home'

  get 'static_pages/help', as: "resources"

  get 'static_pages/about', as: "about"

  get 'static_pages/contact', as: "contact"

end
