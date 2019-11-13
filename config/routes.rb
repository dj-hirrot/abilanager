Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get 'join', to: 'users/registrations#new'
    get 'login', to: 'users/sessions#new'
    delete 'logout', to: 'users/sessions#destroy'
  end
  root 'home#top'
end
