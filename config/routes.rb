Portfolio::Application.routes.draw do
  root :to => 'pages#welcome'
  
  get "login" => 'logins#new', :as => "login"
  post "login" => 'logins#create', :as => "create_login"
  
  post "create_user" => 'users#create', :as => "create_user"
  # get signup => 'users#new', :as => "signup"
  
  get "projects/index" => 'projects#index', :as =>"projects"
  get "projects/new" => 'projects#new', :as =>"new_project"
  post "projects/index" => 'projects#create'
  get "projects/:id" => 'projects#show', :as =>"project"
  get "projects/:id/edit" => 'projects#edit', :as =>"edit_project"
  put "projects/:id" => 'projects#update'
  
  get "contacts/index" => 'contacts#index', :as =>"contacts"
  get "contacts/new" => 'contacts#new', :as =>"new_contact"
  post "contacts/index" => 'contacts#create'
  get "contacts/:id" => 'contacts#show', :as =>"contact"
  get "contacts/:id/edit" => 'contacts#edit', :as =>"edit_contact"
  put "contacts/:id" => 'contacts#update'
  
  get "links/index" => 'links#index', :as =>"links"
  get "links/new" => 'links#new', :as =>"new_link"
  post "links/index" => 'links#create'
  get "links/:id" => 'links#show', :as =>"link"
  get "links/:id/edit" => 'links#edit', :as =>"edit_link"
  put "links/:id" => 'links#update'
  
  get "articles/index" => 'articles#index', :as =>"articles"
  get "articles/new" => 'articles#new', :as =>"new_article"
  post "articles/index" => 'articles#create'
  get "articles/:id" => 'articles#show', :as =>"article"
  get "articles/:id/edit" => 'articles#edit', :as =>"edit_article"
  put "articles/:id" => 'articles#update'

end
