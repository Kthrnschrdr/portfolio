Portfolio::Application.routes.draw do
  root :to => 'pages#welcome'
  
  get "login" => 'logins#new', :as => "login"
  post "login" => 'logins#create', :as => "create_login"
  
  post "create_user" => 'users#create', :as => "create_user"
  get "signup" => 'users#new', :as => "signup"
  
  get "like/:article_id" => 'likes#new', :as => "like"
  
resources :projects
resources :contacts
resources :links
resources :articles

end
