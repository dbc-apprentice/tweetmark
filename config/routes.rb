Tweetmark::Application.routes.draw do
  match "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
  resources :users
end
