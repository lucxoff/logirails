Rails.application.routes.draw do
  devise_for :users
  root to:"app#home"

  get "/contact", to: "app#contact"

  get "/articles/:id", to: "app#show", as: "article"
  get "/articles/tags/:id", to: "tag#show", as: "tag"

  get '/dashboard', to: "dashboard#index"

  resources :articles, path: "dashboard/articles", except: [:show, :index]
  resources :tags, path: "dashboard/tags", except: [:show, :index]
  
end
