Rails.application.routes.draw do
  
  root "articles#index"
  
  #Creates a route, ask for articles and sed them to index
  #get "/articles", to: "articles#index"
  #get "/articles/:id", to "articles#show"
   
  resources :articles  
  #maps all the routes 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
