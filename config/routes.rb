Sampleapp::Application.routes.draw do
  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

  root :to => 'pages#home'  
  
  match '/signup', :to => 'users#new'
  
  match '/home', :to => 'pages#home'
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
end
