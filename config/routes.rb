Portfolio::Application.routes.draw do
  root :to => 'projects#index'
  
  get "login" => 'logins#new', :as => "login"
  post "login" => 'logins#create', :as => "create_login"
  get "logout" => 'logins#destroy', :as => "logout"
  
  get "signup" => 'users#new', :as => "signup"
  post "create_user" => 'users#create', :as => "create_user"
  
  resources :projects, :contacts, :links

end
