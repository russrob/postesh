Rails.application.routes.draw do
  get 'feature' => 'pages#feature'
  get 'pricing' => 'pages#pricing'
  get 'about' => 'pages#about'
  get 'pages/home'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
end
