Rails.application.routes.draw do
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  devise_for :users
  root to: 'blogs#index'
  resources :blogs do
    collection do
      get 'today'
    end
  end
end
