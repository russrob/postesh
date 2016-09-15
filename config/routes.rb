Rails.application.routes.draw do
  get "/auth/:provider/callback", to: 'connections#create'
  resources :connections, only: [:destroy]


  devise_for :users, controllers: { registrations: 'registrations'}  
  get 'feature' => 'pages#feature'
  get 'pricing' => 'pages#pricing'
  get 'about' => 'pages#about'
  get 'dashboard', to: 'pages#dashboard'
  get 'auth/failure', to: 'connections#omniauth_failure'
  get 'pages/home'
  resources :posts
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
end
