Rails.application.routes.draw do
  resources :tournament_users
  resources :match_users
  resources :tournaments
  resources :matches
  resources :users
  get "/leaderboards" => "leaderboards#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
