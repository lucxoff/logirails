Rails.application.routes.draw do
  root to:"app#home"

  get "/article", to: "app#show"

end
