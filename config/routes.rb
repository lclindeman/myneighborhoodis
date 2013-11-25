Myneighborhoodis::Application.routes.draw do
  resources :neighborhoods do 
    resources :submissions
  end
  root to:"neighborhoods#index"
end