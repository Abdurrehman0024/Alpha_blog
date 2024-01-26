Rails.application.routes.draw do

root 'pages#home'

get 'about', to: 'pages#about'
  resources :articles, except: [:delete] do
    get 'delete'
  end
  resources :users , except: [:new]
  get "signup", to:"users#new"
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
