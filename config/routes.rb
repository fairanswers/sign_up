Rails.application.routes.draw do
  resources :tasks
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  resources :events
#  devise_for :users
  root "home#index"
  devise_for :users, controllers: {
     sessions: 'users/sessions',
     passwords: 'users/passwords',
     registrations: 'users/registrations'
  }
end
