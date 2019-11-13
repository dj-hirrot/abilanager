Rails.application.routes.draw do
  devise_for :users, skip: [:registrations, :sessions]
  devise_scope :user do
    get 'join', to: 'users/registrations#new'
    post 'join', to: 'users/registrations#create'
    get 'login', to: 'users/sessions#new'
    post 'login', to: 'users/sessions#create'
    delete 'logout', to: 'users/sessions#destroy'
  end
  root 'home#top'
end
