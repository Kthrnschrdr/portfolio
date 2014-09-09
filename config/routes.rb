Portfolio::Application.routes.draw do
  get "home" => 'pages#welcome'
  
  get "projects/index" => 'projects#index', :as =>"projects"
  get "projects/new" => 'projects#new', :as =>"new_project"
  post "projects/index" => 'projects#create'
  get "projects/:id" => 'projects#show', :as =>"project"

end
