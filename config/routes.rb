Tweetmark::Application.routes.draw do
  resources :users
  match "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

end
