Rails.application.routes.draw do
  
  root "articles#index"
  
  
  resources :articles do 
    resources :comments #creates comments as a nested source within articles
  end
  #maps all the routes 
end
