Rails.application.routes.draw do

  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#index'

  resources :users, only: [:new, :create]

  get 'entrar' , to: 'sessions#new'
  post 'entrar', to: 'sessions#create'
  delete 'sair', to: 'sessions#destroy'
end
