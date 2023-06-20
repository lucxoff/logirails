Rails.application.routes.draw do
  devise_for :users
  root to:"app#home"

  get "/contact", to: "app#contact"

  get "/articles/:id", to: "app#show"
  get "/articles/tags/:id", to: "tag#show"

end
