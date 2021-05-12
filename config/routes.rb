Rails.application.routes.draw do
  
  #Creates a route, ask for articles and sed them to index
  get "/articles", to: "articles#index"

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
