Rails.application.routes.draw do
  get "/animes" => "animes#index"
  get "/animes/:id" => "animes#show"
end
