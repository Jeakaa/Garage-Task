ActionController::Routing::Routes.draw do |map|


  map.connect '', :controller => :projects,
              :action => :index


  map.resources :projects
  map.resources :tasks

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
