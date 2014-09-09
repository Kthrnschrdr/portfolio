Portfolio::Application.routes.draw do
  get "home" => 'pages#welcome'
  
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
  get "links/:id" => 'links#show', :as =>"links"
  get "links/:id/edit" => 'links#edit', :as =>"edit_link"
  put "links/:id" => 'links#update'

end
