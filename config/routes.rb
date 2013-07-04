Rails3BootstrapDeviseCancan::Application.routes.draw do
  root :to => "home#index"
    match '/terms_use', :to => "home#terms_use"
    
  devise_for :users, :controllers => {:sessions => "sessions", :registrations => "registrations"}
  resources :users
  resources :books
end