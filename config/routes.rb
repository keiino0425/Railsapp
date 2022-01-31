Rails.application.routes.draw do
  get 'reserve/index'
  resources :rooms
  resources :reserve
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
