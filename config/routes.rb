ActionController::Routing::Routes.draw do |map|
  map.root :controller => :user_sessions, :action => :new

  map.resource :user_session
  map.resource :dashboard

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end