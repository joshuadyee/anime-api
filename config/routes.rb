Rails.application.routes.draw do
  get "/animes" => "animes#index"
  get "/animes/:id" => "animes#show"
  post "/animes" => "animes#create"
  patch "animes/:id" => "animes#update"
end
