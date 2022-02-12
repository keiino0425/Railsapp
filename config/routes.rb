Rails.application.routes.draw do

  resources :rooms do
    collection do
      get :search, to: 'rooms#search'
    end
  end
  resources :reservations
  get 'rooms/posts', to: 'rooms#post'
  get 'reservations/new/:id', to: 'reservations#new'
  post 'reservations/confirm', to: 'reservations#confirm'
  get 'reservations/:id', to: 'reservations#show'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get 'users/profile', to: 'users/sessions#profile'
    get 'users/account', to: 'users/sessions#account'
    put 'users/profile/edit', to: 'users/sessions#profile_edit'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
