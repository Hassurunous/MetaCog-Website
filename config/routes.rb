Rails.application.routes.draw do
  # get 'posts/index'
  #
  # get 'posts/new'
  #
  # get 'posts/create'
  #
  # get 'posts/show'
  #
  # get 'posts/edit'
  #
  # get 'posts/update'
  #
  # get 'posts/delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :new, :create, :show, :destroy] do
    resources :comments, only: [:index, :create, :destroy]
  end

  root to: "posts#index"
end
