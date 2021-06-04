Rails.application.routes.draw do
  
  root "articles#index"
  
  #Creates a route, ask for articles and sed them to index
  #get "/articles", to: "articles#index"
  #get "/articles/:id", to "articles#show"
   
  resources :articles do 
    resources :comments
  end
  #maps all the routes 
end
