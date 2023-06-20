Rails.application.routes.draw do
  root to:"app#home"

  get "/articles/:id", to: "app#show"
  get "/articles/tags/:id", to: "tag#show" # Commit 

end
