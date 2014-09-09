Portfolio::Application.routes.draw do
  get "home" => 'pages#welcome'
  
  get "projects/index" => 'projects#index'
  get "project/new" => 'project#new'
  post "projects" => 'projects#create'
  get "projects/:id" => 'projects#show'

end
