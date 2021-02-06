Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'contacts#index'

  resources :users, only: [:show, :new, :create, :edit, :update] do
    resources :contacts, only: [:index, :new, :create, :edit, :update, :destroy, :show]
  end

  get 'entrar' , to: 'sessions#new'
  post 'entrar', to: 'sessions#create'
  delete 'sair', to: 'sessions#destroy'

  get 'index', to: 'static_pages#index'
end
