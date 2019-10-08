Rails.application.routes.draw do
  
  get 'files/new'
  devise_for :users, only: [:sessions], controllers: {
    sessions: 'users/sessions'
  }

  root 'static_pages#home'
  get 'home', to: 'static_pages#home'
  get 'painel', to: 'static_pages#painel'
  get 'files/new'

  resources :bios, only: [:show, :update, :edit]
  resources :home_videos, only: [:show, :update, :edit]
  resources :publics
  resources :comments
  resources :teachers
end
