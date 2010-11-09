LunchBunch::Application.routes.draw do
  resources :restaurants, :only => [:index]
  root :to => 'restaurants#index'
end
