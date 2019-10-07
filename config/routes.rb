Rails.application.routes.draw do
  
  devise_for :users, only: [:sessions], controllers: {
    sessions: 'users/sessions'
  }

  root 'static_pages#home'
  get 'home', to: 'static_pages#home'
  get 'painel', to: 'static_pages#painel'
end
