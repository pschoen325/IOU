Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resources :conversations, only: [:index, :show, :destroy] do
  member do
    post :reply
    post :restore
    post :mark_as_read
  end
  collection do
    delete :empty_trash
  end
end
resources :messages, only: [:new, :create]

resources :users, only: [:index]

root to: 'conversations#index'

  resources :conversations, only: [:index, :show, :destroy]

  resources :messages, only: [:new, :create]

  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :restore
    end
  end

  resources :conversations, only: [:index, :show, :destroy] do
    collection do
      delete :empty_trash
    end
  end
  resources :users, only: [:index]

end
