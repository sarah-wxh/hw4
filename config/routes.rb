Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  get "/logout", { :controller => "sessions", :action => "destroy" }

  resources "entries"
  resources "places"
  resources "sessions"
  resources "users"
end
