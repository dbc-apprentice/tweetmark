Tweetmark::Application.routes.draw do
  get "new/create"

  get "new/destroy"

  get "hashtags/new"

  get "hashtags/create"

  get "hashtags/edit"

  get "tweets/new"

  get "tweets/create"

  get "tweets/update"

  get "tweets/edit"

  get "tweets/destroy"

  root :to => "users#index"

  resources :users
  match "/auth/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout

end
